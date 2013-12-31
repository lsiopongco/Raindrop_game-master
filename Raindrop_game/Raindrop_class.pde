class Raindrop {
  PVector loc, vel, acc;
  int d;
  float hue=random(360);

  Raindrop() {
    // sets the diameter for raindrops and the PVectors
    d = 10;
    loc = new PVector(random(width), -d); 
    vel = new PVector(0, 1);
    acc = new PVector(0, .02);
  }

  void display() {
    //sets the color for the raindrops and creates the image 
    colorMode(HSB,300,100,100,100);
    fill(hue,100,100,50);
    ellipse(loc.x, loc.y, d, d);
  }
  //moves raindrops down by a velocity
  void move() {
    loc.add(vel);
    
//increases acceleration rate as falls 
  if(loc.y>=0){
    vel.add(acc);
  }
}
}

