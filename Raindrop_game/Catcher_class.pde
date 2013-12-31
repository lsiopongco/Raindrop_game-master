class Catcher {
  PVector loc;
  float d;
  int moveSpeed;
  PVector move;

  Catcher() {
    // sets the moves speed for the catcher as well as the diameter adn the location. 
    loc = new PVector(width/2, height-57);
    d = 33;
    moveSpeed = 5;
    move = new PVector();
  }

  void display() {
    //creates the catcher image mario 
    fill(0);
    stroke(0, 0, 100);
    image(mario, loc.x, loc.y, d, d);
  }

  void move() {
    //sets the catcher controls and coordinates
    loc.x = constrain(loc.x, 0, width);
    loc.y = constrain(loc.y, 0, height);
    if (keyPressed ) {
      if (key == CODED) {
        if (keyCode == LEFT) {
          loc.x -= moveSpeed;
        }
        if (keyCode == RIGHT) {
          loc.x += moveSpeed;
        } 
        
      }
    }
  }
}



