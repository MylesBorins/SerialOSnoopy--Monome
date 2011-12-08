/**
 * <p>CustomGrayScott shows how to extend the GrayScott class to create spatial
 * differences in behaviour (i.e. different patterns) through manipulating the
 * F and K coefficients of the reaction diffusion. The demo also uses the
 * ColorGradient & ToneMap classes of the colorutils package to create a
 * tone map for rendering the results of the Gray-Scott reaction-diffusion.</p>
 *
 * <p><strong>Usage:</strong><ul>
 * <li>click + drag mouse to draw dots used as simulation seed</li>
 * <li>press any key to reset</li>
 * </ul></p>
 */

/* 
 * Copyright (c) 2009 Karsten Schmidt
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

int NUM_ITERATIONS = 5;

GrayScott gs;
ToneMap toneMap;

int monome_port = 3030;
import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

boolean monomePressed = false;
int monomeX;
int monomeY;

void setup() {
  size(256,256);
  gs=new PatternedGrayScott(width,height,false);
  gs.setCoefficients(0.021,0.076,0.12,0.06);
  // create a color gradient for 256 values
  ColorGradient grad=new ColorGradient();
  // NamedColors are preset colors, but any TColor can be added
  // see javadocs for list of names:
  // http://toxiclibs.org/docs/colorutils/toxi/color/NamedColor.html
  grad.addColorAt(0,NamedColor.WHITE);
  grad.addColorAt(16,NamedColor.CORNSILK);
  grad.addColorAt(128,NamedColor.PINK);
  grad.addColorAt(192,NamedColor.PURPLE);
  grad.addColorAt(255,NamedColor.BLACK);
  // this gradient is used to map simulation values to colors
  // the first 2 parameters define the min/max values of the
  // input range (Gray-Scott produces values in the interval of 0.0 - 0.5)
  // setting the max = 0.33 increases the contrast
  toneMap=new ToneMap(0,0.33,grad);
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
  if(monomePressed == true){
    gs.setRect(monomeX, monomeY,20,20);
    monomePressed = false;
  }
  loadPixels();
  // update the simulation a few time steps
  for(int i=0; i<NUM_ITERATIONS; i++) {
    gs.update(1);
  }
  // read out the V result array
  // and use tone map to render colours
  for(int i=0; i<gs.v.length; i++) {
    pixels[i]=toneMap.getARGBToneFor(gs.v[i]);
  }
  updatePixels();
}

void keyPressed() {
  gs.reset();
}

class PatternedGrayScott extends GrayScott {
  public PatternedGrayScott(int w, int h, boolean tiling) {
    super(w,h,tiling);
  }

  public float getFCoeffAt(int x, int y) {
    x/=32;
    return 0==x%2 ? f : f-0.005;
  }

  public float getKCoeffAt(int x, int y) {
    return k-y*0.00004;
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

