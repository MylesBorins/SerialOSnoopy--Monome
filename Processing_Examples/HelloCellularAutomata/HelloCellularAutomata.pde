/**
 * <p>HelloCA demo shows the basic usage pattern for the 2D cellular automata implementation
 * in combination with a tone map to render its current state. The CA simulation can be
 * configured with birth and survival rules to create all the complete set of rules with a
 * 3x3 cell evaluation kernel.</p>
 *
 * <p><strong>Usage:</strong><ul>
 * <li>click + drag mouse to disturb the CA matrix</li>
 * <li>press any key to restart simulation</li>
 * </ul></p>
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

import toxi.sim.automata.*;
import toxi.math.*;
import toxi.color.*;

CAMatrix ca;
ToneMap toneMap;

int monome_port = 8000;
import oscP5.*;
import netP5.*;

int monomeX;
int monomeY;
boolean monomePressed = false;

OscP5 oscP5;
NetAddress myRemoteLocation;

void setup() {
  size(256,256);
  // the birth rules specify options for when a cell becomes active
  // the numbers refer to the amount of ACTIVE neighbour cells allowed,
  // their order is irrelevant
  byte[] birthRules=new byte[] { 
    2,5 };
  // survival rules specify the possible numbers of allowed or required
  // ACTIVE neighbour cells in order for a cell to stay alive
  byte[] survivalRules=new byte[] { 
    3,4,6,7 };
  // setup cellular automata matrix
  ca=new CAMatrix(width,height);
  // assign the rules to the matrix
  // unlike traditional CA's only supporting binary cell states
  // this implementation supports a flexible number of states (cell age)
  // in this demo cell states reach from 0 - 63
  CARule rule=new CARule2D(birthRules,survivalRules,128,true);
  rule.setAutoExpire(true);
  ca.setRule(rule);
  // create a gradient for rendering/mapping the CA
  ColorGradient grad=new ColorGradient();
  // NamedColors are preset colors, but any TColor can be added
  // see javadocs for list of names:
  // http://toxiclibs.org/docs/colorutils/toxi/color/NamedColor.html
  grad.addColorAt(0,NamedColor.WHITE);
  grad.addColorAt(64,NamedColor.YELLOW);
  grad.addColorAt(128,NamedColor.LIMEGREEN);
  grad.addColorAt(192,NamedColor.CYAN);
  grad.addColorAt(240,NamedColor.RED);
  grad.addColorAt(255,NamedColor.WHITE);
  // the tone map will map cell states/ages to a gradient color
  toneMap=new ToneMap(0,rule.getStateCount()-1,grad);
  
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
  loadPixels();
  if (monomePressed) {
    ca.drawBoxAt(monomeX,monomeY,40,1);
  }
  ca.update();
  int[] m=ca.getMatrix();
  for(int i=0; i<m.length; i++) {
    pixels[i]=toneMap.getARGBToneFor(m[i]);
  }
  updatePixels();
}

void keyPressed() {
  ca.reset();
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
