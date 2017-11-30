int state = 0;
float x = 0;
Food f;
ArrayList<Food> nibs = new ArrayList<Food>();

void setup() {
  fullScreen();
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  fill(250);
}

void draw() {
  switch (state) {
  case 0:
    drawIntro();
    break;
  case 1:
    eatingCow();
    break;
  case 2:
    eatingCowM();
    break;
  case 3:
    runningCow();
    break;
  case 4:
    runningCowM();
  default:
    break;
  case 5:
    milkingCow();
    default:
    break;
  case 6:
    killingCowM();
    default:
    break;
  case 7:
    killingCow();
    default:
    break;
  }
  }


void keyPressed() {
  switch (state) {
  case 0:
    if (key == 'a') {
      state = 1;
    } else if (key == 'd') {
      state = 2;
    }
    break;
  case 1:
    if (key == 's') {
      state = 3;
    } else if (key == 'w') {
      state = 4;
    }
    break;
  case 2:
    if (key == ' ') {
      state = 5;
    }
    break;
  case 3:
    if (key == ' ') {
      state = 6;
    }
    break;
  case 4:
    if (key == 'r') {
      state = 0;
    }
  default:
    break;
  }
}

void drawIntro() {
  background(0, 200, 120);
  noStroke();
  fill(#C92D1E);
  rect(width/2, height/2, 100, 100);
  triangle(600, 350, 300, 400, 600, 100);
  textSize(42);
  text("WELCOME TO THE FARM", width/2, 150);
  textSize(24);
  text("press a or d to select your path", width/2, height- 150);
}

void eatingCow() {
  background(#76DB04);
  textSize(25);
  fill(#3E7103);
  text("EAT THE FOOD. GET FAT AND READY.", width/2, height/2);
  rectMode(CENTER);
  fill(255);
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
  triangle(x, x, x, x, x, x); //horns

  for (int i = 0; i < nibs.size(); i++) {
    Food f = nibs.get(i);
    f.display();
  }
}

void eatingCowM() {
  background(#76DB04);
  textSize(25);
  fill(#3E7103);
  text("EAT THE FOOD. GET FAT AND READY.", width/2, height/2);
  rectMode(CENTER);
  cow();

  for (int i = 0; i < nibs.size(); i++) {
    Food f = nibs.get(i);
    f.display();
  }
}



void mousePressed() 
{
  x += 30;
  nibs.add(new Food());
  redraw();
}

void runningCow() {
  background(120, 0, 200);
  textSize(24);
  text("NO ROMANCE.RUN.", width/2, height/2 + 100);
  text("press spacebar to continue", width/2, height- 150);
 
}

void runningCowT() {
  background(0, 120, 200);
  textSize(24);
  text("NO ROMANCE.RUN.", width/2, height/2 + 100);
  text("press spacebar to continue", width/2, height- 150);
  pushMatrix();
  translate(width/2, height/2);
  rotate(sin(frameCount * 0.01) * PI);
  rect(0, 0, 100, 100);
  popMatrix();
}

void cowDying() {
  background(10);
  textSize(72);
  text("TIME TO DIE.", width/2, height/2);
  textSize(24);
  text("press r to restart", width/2, height- 150);
}