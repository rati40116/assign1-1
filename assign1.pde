/* please implement your assign1 code in this file. */
PImage treasureImg;
PImage hpImg;
PImage fighterImg;
PImage enemyImg;
PImage backgroundImg1;
PImage backgroundImg2;
int X,Y; // enemy intitation site
int A,B; // treasure site
int C; // hp length
int D; //bg1 site
int E; //bg2 site

void setup() {
   size(640,480) ;  // must use this size.
   fighterImg = loadImage("img/fighter.png");
   treasureImg = loadImage("img/treasure.png");
   hpImg = loadImage("img/hp.png");
   enemyImg = loadImage("img/enemy.png");
   backgroundImg1 = loadImage("img/bg1.png");
   backgroundImg2 = loadImage("img/bg2.png");
   X = 0;
   A = floor(random(211,600));
   B = floor(random(31,450));
   Y = floor(random(50,430));
   C = floor(random(50,200));
   D = 0;
}

void draw(){
  background(0);
  image(backgroundImg1,D,0);
  image(backgroundImg2,E,0);
  fill(255,0,0);
  rect(5,0,C,31);
  image(hpImg,0,0);
  image(treasureImg,A,B);
  image(fighterImg,580,240);
  image(enemyImg,X,Y);
  X %= 640; //X=0~639
  X += 3;
  D %= 640;
  D ++ ;
  E = D-640;
}
