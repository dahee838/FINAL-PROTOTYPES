void cow()
{
  fill(#935B00);
  stroke(#FAFAE6);
  ellipse(x, height/2, x, x); //body
  ellipse(x * 1.5, height/2, x/2, x/2); //head
  fill(0);
  noStroke();
  ellipse(x * 1.5, height/2, x/20, x/20); //eyes
  ellipse(x * 1.7, height/2, x/20, x/20);
  ellipse(x * 1.6, 450, x/5, x/10); //nose
  fill(255);
  ellipse( x * 1.65, 450, x/50, x/50);
  ellipse( x * 1.55, 450, x/50, x/50);
  fill(0);
  rect(x + 70, 500, x/10, x/5); //legs
  rect(x/1.5, 500, x/10, x/5);
  pushMatrix();
  translate(0,width/4);
  translate(0, -x);
  triangle(100 + x , x + 76, x + 50,  x, x+ 70 , x + 60); //horns
  popMatrix();
  
}