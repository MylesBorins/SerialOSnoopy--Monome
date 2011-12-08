/**
 * <p>Demonstration of the Polygon2D.smooth() function, applying a low pass filter
 * to the vertex positions of polygons in order to reduce their spatial contrast/sharpness
 * and slowly approach a rounder form.</p>
 * 
 * <p><strong>Usage</strong>:<br/>
 * Click anywhere to add a polygon</p>
 */

/* 
 * Copyright (c) 2010 Karsten Schmidt
 * 
 * This library is free software; you can redistribute it and/or
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
 
import toxi.color.*;
import toxi.geom.*;
import toxi.processing.*;
int monome_port = 3030;
import oscP5.*;
import netP5.*;

boolean drawn = false;

OscP5 oscP5;
NetAddress myRemoteLocation;

// number of vertices in each polygon
int num=30;

List<ColoredPolygon> polygons = new ArrayList<ColoredPolygon>();

ToxiclibsSupport gfx;

void setup() {
  size(680,382);
  noStroke();
  smooth();
  gfx=new ToxiclibsSupport(this);
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
  if(drawn == false){
  background(255);
  // iterate over all polygon created so far
  for(ColoredPolygon p : polygons) {
    // apply vertex smoothing
    p.smooth(0.01,0.05);
    // and draw
    fill(p.col.toARGB());
    gfx.polygon2D(p);
  }
  drawn = true;
  }
}

// create a new polygon around the mouse position using a random radius for each vertex
public void monome(int xAxis, int yAxis, int state) {
  if(drawn == true){
  if(state == 1){
  xAxis = ((xAxis * width) / 15);
  yAxis = ((yAxis * height) / 15);
  // pick a random bright color and set its alpha to 50-80%
  TColor col=ColorRange.BRIGHT.getColor().setAlpha(random(0.5,0.8));
  // add randomized vertices
  ColoredPolygon poly=new ColoredPolygon(col);
  float radius=random(50,200);
  for(int i=0; i<num; i++) {
    poly.add(Vec2D.fromTheta((float)i/num*TWO_PI).scaleSelf(random(0.2,1)*radius).addSelf(xAxis,yAxis));
  }
  // add poly to list of polygons
  polygons.add(poly);
  }
  drawn = false;
  }
}


// extend the standard Polygon2D class to include color information
class ColoredPolygon extends Polygon2D {
  ReadonlyTColor col;
  
  public ColoredPolygon(ReadonlyTColor col) {
    this.col=col;
  }
}
