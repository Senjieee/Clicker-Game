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
color backSelect;
color ball;
color background;
color lifePoints;
color pauseSelect;
color deadIntro;
color retry;
color giveUp;

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

int score, lives, highscore;

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
  score = 0;
  lives = 3;
  highscore = 0;
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
  if (mouseX > 50 && mouseX < 250 && mouseY > 50 && mouseY < 100) {
    backSelect = glow;
  } else {
    backSelect = black;
  }
  
  if (lives == 3) {
    lifePoints = green;
  } else if (lives == 2) {
    lifePoints = yellow;
  } else {
    lifePoints = red;
  }
  
  if (lives < 1) {
    mode = gameOver;
  }
  
  if (mouseX > 700 && mouseX < 750 && mouseY > 35 && mouseY < 85) {
    pauseSelect = glow;
  } else {
    pauseSelect = black;
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 500) {
    deadIntro = glow;
  } else {
    deadIntro = white;
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 600) {
    retry = glow;
  } else {
    retry = white;
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 650 && mouseY < 700) {
    giveUp = glow;
  } else {
    giveUp = white;
  }
  if (score > highscore) {
    highscore = score;
  }
}
