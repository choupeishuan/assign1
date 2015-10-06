
PImage bg1Img,bg2Img;
PImage enemyImg;
PImage fighterImg;
PImage hpBarImg;
PImage treasureImg;

int x,y; //background
int a,b; //treasure
int c,d; //enemy
int e; //hpBar


void setup () {
  
  size(640,480) ; 
  bg1Img = loadImage("img/bg1.png");
  bg2Img = loadImage("img/bg2.png");
  enemyImg = loadImage("img/enemy.png");
  fighterImg = loadImage("img/fighter.png");
  hpBarImg = loadImage("img/hp.png");
  treasureImg = loadImage("img/treasure.png");
  
  x=640;
  y=0;
  a=floor(random(0,601));
  b=floor(random(0,440));
  c=0;
  d=floor(random(0,420));
  e=floor(random(10,202));
  
}

void draw() {
  
  background(0);
  
  //background
   
  image(bg1Img,x-640,0);
  image(bg2Img,y-640,0);
  x++;
  x %=1281;
  y++;
  y %=1281;
  
  //fighter
  image(fighterImg,589,215);
  
  //treasure
  image(treasureImg,a,b);
 
  //enemy
  image(enemyImg,c,d);
  c+=3;
  c %=641;
  
  //hpBar
  fill(255,0,0);
  rect(10,7,e,20);
  image(hpBarImg,5,5);

}
