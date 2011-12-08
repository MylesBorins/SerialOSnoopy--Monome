/**
 * <p>GrayScottImage uses the seedImage() method to use a bitmap as simulation seed.
 * In this demo the image is re-applied every frame and the user can adjust the 
 * F coefficient of the reaction diffusion to produce different patterns emerging
 * from the boundary of the bitmapped seed. Unlike some other GS demos provided,
 * this one also uses a wrapped simulation space, creating tiled patterns.</p>
 *
 * <p><strong>usage:</strong></p>
 * <ul>
 * <li>click + drag mouse to locally disturb the simulation</li>
 * <li>press 1-9 to adjust the F parameter of the simulation</li> 
 * <li>press any other key to reset</li>
 * </ul>
 */

/* 
 * Copyright (c) 2010 Karsten Schmidt
 * 
 * This demo & library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 * 
 * http://creativecommons.org/licenses/LGPL/2.1/
 * 
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */

import toxi.sim.grayscott.*;
import toxi.math.*;
import toxi.color.*;

boolean monomePressed = false;
int monomeX;
int monomeY;
GrayScott gs;
ToneMap toneMap;

int monome_port = 3030;
import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

void setup() {
  size(256,256);
  gs=new GrayScott(width,height,true);
  //img=loadImage("ti_yong.png");
  // create a duo-tone gradient map with 256 steps
  toneMap=new ToneMap(0,0.33,NamedColor.CRIMSON,NamedColor.WHITE,256);
  /* start oscP5, listening */
  oscP5 = new OscP5(this,monome_port);
  
  /* myRemoteLocation is a NetAddress. a NetAddress takes 2 parameters,
   * an ip address and a port number. myRemoteLocation is used as parameter in
   * oscP5.send() when sending osc packets to another computer, device, 
   * application. usage see below. for testing purposes the listening port
   * and the port of the remote location address are the same, hence you will
   * send messages back to this sketch.
   */
  myRemoteLocation = new NetAddress("127.0.0.1",monome_port);
  
  /* osc plug service
   * osc messages with a specific address pattern can be automatically
   * forwarded to a specific method of an object. in this example 
   * a message with address pattern /test will be forwarded to a method
   * test(). below the method test takes 2 arguments - 2 ints. therefore each
   * message with address pattern /test and typetag ii will be forwarded to
   * the method test(int theA, int theB)
   */
  oscP5.plug(this,"monome","/grid/key");
}

void draw() {
  if(monomePressed==true){
    gs.setRect(monomeX, monomeY,20,20);
    monomePressed=false;
  }
  loadPixels();
  for(int i=0; i<10; i++) gs.update(1);
  // read out the V result array
  // and use tone map to render colours
  for(int i=0; i<gs.v.length; i++) {
    pixels[i]=toneMap.getARGBToneFor(gs.v[i]);
  }
  updatePixels();
}

void keyPressed() {
  if (key>='1' && key<='9') {
    gs.setF(0.02+(key-'1')*0.001);
  } 
  else {
    gs.reset();
    monomePressed = false;
  }
}

public void monome(int xAxis, int yAxis, int state) {
  if(state == 1){
  xAxis = (xAxis * width) / 15;
  monomeX = (xAxis * 8 / 10) + (width / 10);
  yAxis = (yAxis * height) / 15;
  monomeY = (yAxis * 8 / 10) + (height / 10);
  monomePressed = true;
  }
}

