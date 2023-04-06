import de.voidplus.leapmotion.*;

Thing thing;

LeapMotion leap;

void setup() { 
  thing = new Thing();
  size(800, 600);
  imageMode(CENTER);
  leap = new LeapMotion(this);
}


void draw() {
  background(127, 91, 254);
  //updates
  for (Hand h : leap.getHands()) {
    if (h.isRight()) {
      float p = h.getPitch();
      float r = h.getRoll();
      float y = h.getYaw();
      
      thing.updateData(new String[] {"" + round(p), "" + round(r), "" + round(y), "" + round(thing.getX())}, new String[] {"pitch", "roll", "yaw", "xPos"});
      
      thing.setY(map(p, 60, -60, 0, width));
      thing.setX(map(r, -60, 60, 0, height));
      thing.setAngle(y);
    }
  }
  //display
  thing.display();
  thing.showData();
}
