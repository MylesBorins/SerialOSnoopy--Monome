// Built on top of
// The Nature of Code
// <http://www.shiffman.net/teaching/nature>
// Spring 2010
// PBox2D example

// An uneven surface

import pbox2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.*;
import oscP5.*;
import netP5.*;

boolean drawn = false;

//Init Port
int monome_port = 3030;

OscP5 oscP5;
NetAddress myRemoteLocation;

// A reference to our box2d world
PBox2D box2d;

// An ArrayList of particles that will fall on the surface
ArrayList particles;

// An object to store information about the uneven surface
Surface surface;

PFont f;

void setup() {
  size(500,300);
  smooth();
  
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

  f = createFont("Arial",12,true);

  // Initialize box2d physics and create the world
  box2d = new PBox2D(this);
  box2d.createWorld();
  // We are setting a custom gravity
  box2d.setGravity(0, -20);

  // Create the empty list
  particles = new ArrayList();
  // Create the surface
  surface = new Surface();
}

void draw() {
  if(drawn==false){
  // We must always step through time!
  box2d.step();

  background(255);

  // Draw the surface
  surface.display();

  // Draw all particles
  for (int i = 0; i < particles.size(); i++) {
    Particle p = (Particle) particles.get(i);
    p.display();
  }

  // Particles that leave the screen, we delete them
  // (note they have to be deleted from both the box2d world and our list
  for (int i = particles.size()-1; i >= 0; i--) {
    Particle p = (Particle) particles.get(i);
    if (p.done()) {
      particles.remove(i);
    }
  }

  // Just drawing the framerate to see how many particles it can handle
  textFont(f);
  fill(0);
  text("framerate: " + (int)frameRate,12,16);
  drawn = true;
  }
  
}

public void monome(int xAxis, int yAxis, int state) {
  if(drawn==true){
  xAxis = ((xAxis * 400) / 15) + 30;
  yAxis = ((yAxis * 250) / 15) + 25;
  if (state == 1) {
    float sz = random(2,6);
    particles.add(new Particle(xAxis,yAxis,sz));
  }
  println("### plug event method. received a message /grid/key.");
  println(" 3 ints received: "+xAxis+", "+yAxis+", "+state);
  drawn=false;
  }
}

  

