class Winner {
  //Introduces boolean run.
  boolean run2;

  Winner() {
    run2 = true;
  } 
  //Creates ender() function for the GameOver class.
  void win() {
    //Sets run to false to stop game.
    run2= false;
    //Clears all raindrops in array list.
    drops.clear();
    //Sets certain background.
    background(125, 200, 255);
    //If the 'r' key is pressed this will run as true.
    if (keyPressed && key == 'r') {
      //Assigns values to the following.
      run2=true;
    }
    //Aligns text to center.
    textAlign(CENTER);
    //Sets text size to 50.
    textSize(50);
    //Displays certain text lines.
    text("You Win!", 250, 250);
    textSize(20);
    //Displays text line.
    text("'R' TO RESTART", 250, 450);
  }
}

