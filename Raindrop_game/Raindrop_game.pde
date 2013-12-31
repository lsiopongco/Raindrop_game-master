//Introduces the arraylist for the raindrops
ArrayList<Raindrop> drops = new ArrayList<Raindrop>();
//catcher class
Catcher c;
GameOver G;
Winner W; 


//declares the variables
int Startscreen=0;
int oldTime = 0;
int currentTime = 0;
int timeChange = 0;
int index = 1;
PImage mario; 
PImage background;
PImage background1; 
int score;
int Life=3; 
boolean run = true; 
boolean restart=true; 

void setup() {
  G= new GameOver();
  W=new Winner(); 
 
  strokeWeight(3);
  textSize(25);
  colorMode(HSB, 360, 100, 100, 200);
//loads the background for the game 
  background =loadImage("background.jpg");
  size(background.width, background.height);
  

  //loads catcher and mario image
  c= new Catcher();
  mario = loadImage("mario.png");
  
  // adds raindrops 
  for(int i = 0; i<1;i++){
  drops.add(new Raindrop());
  }
  }

void draw() {  
  background(RGB,40,60,150);
  imageMode(CENTER);
  // Startscreen 
  if (Startscreen<=0) {
    textSize(40);
    text("Mario World", 250, 100);
    textSize(20);
    text("Press Space to Start!", 250, 200);

  }
  //changes value so you can play
  if (keyPressed && key == ' ')
  {
    Startscreen ++;
  }


//for loop cycles the array list of raindrops
if(Startscreen>0){
  if (run){
  background(background);
  //displays catcher 
  c.display();
  //moves catcher 
  c.move();
  if (frameCount%100 ==0) {
      drops.add(new Raindrop());
    }
  
  for (int i = drops.size()-1; i >=0; i--) {
    //displays raindrops 
    Raindrop b = drops.get(i);
    b.move();
    b.display();

    // moves raindrops off screen if touching catcher
    if (b.loc.y+22 > c.loc.y && b.loc.y-22 < c.loc.y && 
      b.loc.x +29 >c.loc.x && b.loc.x -29 <c.loc.x) {
      drops.remove(i);
      //adds score value
      score++;
    }
    
  if(b.loc.y>height){
    drops.remove(i);
    Life-=1;
}
  }
  }
  
fill(0);
    //scoreboard
    text(score, 50, 50);
    text("Score",25,25);
    text(Life, width-50, 50);
   text("Life",width-65,25);  
}
if(Life==0){
  G.ender();
}
if(score==5){
 W.win();
}
}
//check for score

