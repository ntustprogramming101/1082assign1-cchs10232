PImage backgroungImg;
PImage soilImg;
PImage grounghogImg;
PImage lifeImg;
PImage robotImg;
PImage soldierImg;
float soldierX, soldierY, soilFloor, robotX, robotY;
float rayX, rayY;
float raySpeed = 2;


void setup() {
  size(640, 480, P2D);
  backgroungImg = loadImage("img/bg.jpg");
  soilImg = loadImage("img/soil.png");
  lifeImg = loadImage("img/life.png");
  grounghogImg = loadImage("img/groundhog.png");
  robotImg = loadImage("img/robot.png");
  soldierImg = loadImage("img/soldier.png");
  robotX=floor(random(160, 560));
  robotY=floor(random(160, 480));
  soilFloor = 80;
  soldierY=floor(random(2, 6))*soilFloor;
  robotY=floor(random(2, 6))*soilFloor;
  rayX=robotX+25;
  rayY=robotY+37;
}

void draw() {
  //background
  image(backgroungImg, 0, 0);
  image(soilImg, 0, 160);
  image(lifeImg, 10, 10);
  image(lifeImg, 80, 10);
  image(lifeImg, 150, 10);

  //grass
  rectMode(CORNERS);
  fill(124, 204, 25);
  noStroke();
  rect(0, 145, 640, 160);

  //sun
  strokeWeight(5);
  stroke(255, 255, 0);
  fill(253, 184, 19);
  ellipse(590, 50, 120, 120);

  //grounghog
  imageMode(CORNERS);
  image(grounghogImg, 280, 80);

  //soldier
  soldierX= soldierX + 5;
  if (soldierX>=640)soldierX=-80; 
  imageMode(CORNERS);
  image(soldierImg, soldierX, soldierY);

  //ray  
  stroke(255, 0, 0);
  strokeWeight(10);
  line(rayX, rayY, rayX+40, rayY);
  rayX-=raySpeed;
  if(rayX<robotX-185)rayX=robotX+25;



  //robot
  image(robotImg, robotX, robotY);
}
