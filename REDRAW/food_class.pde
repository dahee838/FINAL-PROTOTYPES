
class Food
{
  float x;
  float y;
  float s;


  Food()
  {
    x = mouseX;
    y = mouseY;
    s = 30;

}

void display()
{
  fill(#EABF11);
  stroke(#AF8E09);
  ellipse(x,y,s,s);
}
}