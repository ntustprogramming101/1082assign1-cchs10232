PImage backgroungImg;
PImage soilImg;
PImage grounghogImg;
PImage lifeImg;
PImage robotImg;
PImage soldierImg;
int x,y;
int robotX,robotY;
int rayX;


void setup() {
	size(640, 480, P2D);
	backgroungImg = loadImage("img/bg.jpg");
  soilImg = loadImage("img/soil.png");
  lifeImg = loadImage("img/life.png");
  grounghogImg = loadImage("img/groundhog.png");
  robotImg = loadImage("img/robot.png");
  soldierImg = loadImage("img/soldier.png");
  robotX=floor(random(160,560));
  robotY=floor(random(160,480));
  y=floor(random(160,480));
  rayX=robotX-15;


}

void draw() {
  //background
  image(backgroungImg,0,0);
  image(soilImg,0,160);
  image(lifeImg,10,10);image(lifeImg,80,10);image(lifeImg,150,10);

  //grass
  rectMode(CORNERS);
  fill(124,204,25);
  noStroke();
  rect(0,145,640,160);

  //sun
  strokeWeight(5);
  stroke(255,255,0);
  fill(253,184,19);
  ellipse(590,50,120,120);

  //grounghog
  imageMode(CORNERS);
  image(grounghogImg,280,80);
	
  //soldier
  x= x + 5;
  x%=640;
  
  imageMode(CORNERS);
  image(soldierImg,x,y);
  
  //robot
  image(robotImg,robotX,robotY);
  
  //ray
  rayX=rayX - 2;
  stroke(255,0,0);
  strokeWeight(10);
  line(rayX,robotY+37,rayX+40,robotY+37);
}
