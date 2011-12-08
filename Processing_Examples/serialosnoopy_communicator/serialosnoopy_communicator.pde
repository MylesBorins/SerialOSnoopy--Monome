/**
 *  serialosnoopy_communicator by TheAlphaNerd
 *  This code is based heavily on the oscP5plug by andreas schlegel
 *  This sketch will allow you to filter incoming press data from the monome
 *  to bring into processing
 *
 *  If this code is included in a sketch it will create a method called
 *  Monome that will execute whenever a button is pressed
 *
 *  This sketch depends on the oscP5 library which can be found at
 *  https://code.google.com/p/oscp5/
 */
int monome_port = 3030;
import oscP5.*;
import netP5.*;

OscP5 oscP5;
NetAddress myRemoteLocation;

void setup() {
  size(400,400);
  frameRate(25);
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
  oscP5.plug(this,"press","/grid/key");
  oscP5.plug(this,"led","/grid/led/set");
	oscP5.plug(this,"delta","/enc/delta");
	oscP5.plug(this,"key","/enc/key");
}

public void press(int xAxis, int yAxis, int state) {
  println("### plug event method. received a message /grid/key.");
  println(" 3 ints received: "+xAxis+", "+yAxis+", "+state);  
}

public void led(int xAxis, int yAxis, int state) {
  println("### plug event method. received a message /grid/led.");
  println(" 3 ints received: "+xAxis+", "+yAxis+", "+state);
}

public void delta(int encoder, int value){
  println("### plug event method. received a message /enc/delta.");
  println(" 2 ints received: "+encoder+", "+value);
}

public void key(int encoder, int state){
  println("### plug event method. received a message /enc/key.");
  println(" 2 ints received: "+encoder+", "+state);
}

void draw() {
  background(0);
}

void oscEvent(OscMessage theOscMessage) {
  /* with theOscMessage.isPlugged() you check if the osc message has already been
   * forwarded to a plugged method. if theOscMessage.isPlugged()==true, it has already 
   * been forwared to another method in your sketch. theOscMessage.isPlugged() can 
   * be used for double posting but is not required.
  */  
  if(theOscMessage.isPlugged()==false) {
  /* print the address pattern and the typetag of the received OscMessage */
  println("### received an osc message.");
  println("### addrpattern\t"+theOscMessage.addrPattern());
  println("### typetag\t"+theOscMessage.typetag());
  }
}
