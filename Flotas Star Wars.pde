PImage inicio,Logo, batalla2, Flota_R, Flota_R2, Flotas_I, Flotas_I2,barra,barra2,Seleccion;
int GameState = 0, InicialSelected=0;
String hp = "HP 100/100";

void setup()
{
  Logo=loadImage("Logo.png");
  Flota_R=loadImage("Flota-R.png");
  Flota_R2=loadImage("Flota-R-iz.png");
  Flotas_I=loadImage("Flotas-I.png");
  Flotas_I2=loadImage("Flotas-I-iz.png");
  barra=loadImage("barra.png");
  barra2=loadImage("barra2.png");
  Seleccion=loadImage("Seleccion.jpg");
  batalla2=loadImage("batalla2.jpg"); 
  size(900,500);
  fill(0);
  textSize(40);
}

void draw()
{
  if(GameState==0)
  {
    imageMode(CORNER);
    image(Logo,250,100,400,200);
    text("Has click para empezar",200,400);
  }
  else if(GameState==1)
  {
    imageMode(CORNER);
    image(Seleccion,0,0,900,500);
    fill(255);
    text("selecciona un lado(presiona S o L)",250,450);
  }
  else if(GameState==2)
  {
    imageMode(CORNER);
    image(batalla2,0,0,900,500);
    switch(InicialSelected)
    {
      case 1:
      image(Flota_R,100,100,300,300);
      image(Flotas_I2,560,200,300,300);
      break;
      case 2:
      image(Flotas_I,100,100,300,300);
      image(Flota_R2,560,200,300,300);
      break;
    }
     image(barra,90,30,300,50);
    fill(0);
    text(hp, 180, 90);
    text("Presiona A para hacer 100 de daño", 500, 450);
  }
  else if(GameState==3)
  {
    imageMode(CORNER);
    image(batalla2,0,0,900,500);
    text("YOUR WIN THIS BATTLE, PRESS X TO EXIT",500,450);
    switch(InicialSelected)
    {
     case 1:
      image(Flota_R,100,100,300,300);
      image(Flotas_I2,560,200,300,300);
      break;
      case 2:
      image(Flotas_I,100,100,300,300);
      image(Flota_R2,560,200,300,300);
      break; 
    }
    image(barra2,90,30,300,50);
    text(hp, 180, 90);
  }
}

void mousePressed()
{
  if(GameState==0)
  {
    GameState=1;
  }
}

void keyPressed()
{
  if(GameState==1)
  {
    if(key=='s')
    {
      InicialSelected=1;
      GameState=2;
    }
    else if(key=='l')
    {
      InicialSelected=2;
      GameState=2;
    }
  }
  else if(GameState==2)
   {
    if(key == 'a')
    {
    hp="HP 90/100";
    GameState=3;
    }
   }
   else if(GameState==3)
   {
     if(key == 'x')
     {
       GameState=1;
     }
   }
}