//Johnny Geng
//2-3
//May 19 2022
//Clicker Game

color red = color(255, 0, 0);
color blue = color(24, 0, 255);
color yellow = color(255, 247, 0);
color green = color(0, 255, 44);
color orange = color(255, 132, 0);
color purple = color(195, 0, 255);
color grey = color(59, 53, 54);
color black = color(0);
color white = color(255);
color glow = color(238, 245, 153);

color startSelect;
color optionsSelect;
color quitSelect;
color ball;
color background;

float x, y, d;
float vx, vy;
float x2, y2;
float vx2, vy2;

int mode;
final int intro = 0;
final int game = 1;
final int options = 2;
final int pause = 3;
final int gameOver = 4;

void setup() {
  size(800, 800);
  mode = intro;
  textAlign(CENTER, CENTER);
  ball = white;
  x = 400;
  y = 400;
  d = 100;
  x2 = 400;
  y2 = 400;
  vx = random(-5, 5);
  vy = random(-5, 5);
  vx2 = random(-10, 10);
  vy2 = random(-10, 10);
}

void draw() {
  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == options) {
    options();
  } else if (mode == pause) {
    pause();
  } else if (mode == gameOver) {
    gameOver();
  } else {
    println("Error: Mode = " + mode);
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 450) {
    startSelect = glow;
  } else {
    startSelect = black;
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 550) {
    optionsSelect = glow;
  } else {
    optionsSelect = black;
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 600 && mouseY < 650) {
    quitSelect = glow;
  } else {
    quitSelect = black;
  }
}
