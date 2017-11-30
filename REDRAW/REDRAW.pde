ArrayList<Food> nibs = new ArrayList<Food>();
float x = 0;
Food f;
int move = 0;
void setup()
{

  fullScreen();
}

void draw() 
{
  rectMode(CENTER);
  background(#A4E807);
  translate(move, 0);
  cow();
  pushMatrix();
  translate(move * 2,0);
  cow();
  popMatrix();
  
  for (int i = 0; i < nibs.size(); i++) {
    Food f = nibs.get(i);
    f.display();
  }
}


void mousePressed() 
{
  x += 20;
  //redraw();

  nibs.add(new Food());
}

void keyPressed()
{
  if (move == 0)
  {
    move+=10;
    
  }
  
  else
  {
    move +=10;
  }
}