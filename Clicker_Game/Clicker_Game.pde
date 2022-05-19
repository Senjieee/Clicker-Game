//Johnny Geng
//2-3
//May 19 2022
//Clicker Game

int mode;
final int intro = 0;
final int game = 1;
final int pause = 2;
final int gameOver = 3;

void setup() {
  size(800, 800);
  mode = intro;
}

void draw() {
  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == pause) {
    pause();
  } else if (mode == gameOver) {
    gameOver();
  } else {
    println("Error: Mode = " + mode);
  }
}
