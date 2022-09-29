PImage close;
PImage open;
PImage bell;
PImage one;
PImage two;
PImage up;
PFont f;
color circle1Color, baseColor;
color circle1Highlight;
color currentColor;
boolean circle1Over = false;
boolean circle2Over = false;
boolean circle3Over = false;
boolean circle4Over = false;
boolean circle5Over = false;
String txt = " ";
String txt2 = " ";

void setup() {
  size(600,600);
  f = createFont("Arial", 16, true);
  circle1Highlight = color(204);
  baseColor = color(102);
  currentColor = baseColor;
  close = loadImage("302-200.png");
  open = loadImage("open.png");
  bell = loadImage("bell.png");
  one = loadImage("one.png");
  two = loadImage("two.png");
  up = loadImage("up.png");
}

void draw() {
  update(mouseX, mouseY);
  background(currentColor);
  //image(emg, 0,0);
  circle1();
  image(two, 450, 50, 100, 100);
  circle2();
  image(one, 450, 250, 100, 100);
  circle3();
  image(close, 450,450, 100, 100);
  circle4();
  image(bell, 252,450, 100, 100);
  circle5();
  image(open, 7.5,405, 180, 180);
  screen();
  word();
}

void circle1() {
  if (circle1Over) {
    fill(204);
  } else {
    fill(255);
  }
  
  
  ellipse(500,100, 150, 150);
}
void circle2() {
  if (circle2Over) {
    fill(204);
  } else {
    fill(255);
  }
  
  
  ellipse(500,300, 150, 150);
}
void circle3() {
  if (circle3Over) {
    fill(255, 204, 0);
  } else {
    fill(255);
  }
  
  
  ellipse(500,500, 150, 150);
}
void circle4() {
  if (circle4Over) {
    fill(255,0,0);
  } else {
    fill(255);
  }
  
  ellipse(300,500, 150, 150);
}
void circle5() {
  if (circle5Over) {
    fill(255, 204, 0);
  } else {
    fill(255);
  }
  
  ellipse(100,500, 150, 150);
}

void screen() {
  fill(255,255,255);
  rect(50, 50, 350, 350);
}


void update(int x, int y) {
  if (overcircle1 (500, 100, 150)) {
    circle1Over = true;
    circle2Over = false;
    circle3Over = false;
  }else if (overcircle2 (500, 300, 150)) {
    circle2Over = true;
    circle1Over = false;
    circle3Over = false;
  }else if (overcircle3 (500, 500, 150)) {
    circle3Over = true;
    circle1Over = false;
    circle2Over = false;
  }else if (overcircle4 (300, 500, 150)) {
    circle4Over = true;
    circle3Over = false;
    circle1Over = false;
    circle2Over = false;
  }else if (overcircle5 (100, 500, 150)) {
    circle5Over = true;
    circle4Over = false;
    circle3Over = false;
    circle1Over = false;
    circle2Over = false;
  }else
    circle1Over = circle2Over = circle3Over = circle4Over = circle5Over = false;
}

void word() {
  fill(255,0,0);
  textSize(350);
  text(txt, 140, 305);
  textSize(75);
  text(txt2, 85, 250);
}

void arrow() {
  image(up, 100, 100, 100, 100);
}


void mousePressed() {
  if (circle1Over) {
    txt = "2";
    txt2 = "";
  }else if (circle2Over) {
    txt = "1";
    txt2 = "";
  }else if (circle3Over) {
    txt2 = "CLOSING";
    txt = "";
  }else if (circle4Over) {
    txt2 = "RUUUUN";
    txt = "";
  }else if (circle5Over) {
    txt2 = "OPENING";
    txt = "";
  }
}


boolean overcircle1 (int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2) {
    return true;
  } else {
    return false;
  }
}

boolean overcircle2 (int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2) {
    return true;
  } else {
    return false;
  }
}

boolean overcircle3 (int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2) {
    return true;
  } else {
    return false;
  }
}

boolean overcircle4 (int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2) {
    return true;
  } else {
    return false;
  }
}

boolean overcircle5 (int x, int y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2) {
    return true;
  } else {
    return false;
  }
}
