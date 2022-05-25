void gameOver() {
  background(black);
  fill(red);
  textSize(80);
  text("YOU DIED", 400, 300);
  textSize(40);
  text("High Score: " + highscore, 400, 400);
  stroke(deadIntro);
  fill(black);
  rect(300, 450, 200, 50);
  stroke(retry);
  rect(300, 550, 200, 50);
  stroke(giveUp);
  rect(300, 650, 200, 50);
  textSize(30);
  fill(white);
  text("Intro", 400, 475);
  text("Retry?", 400, 575);
  text("Give Up", 400, 675);
}

void gameOverClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 450 && mouseY < 500) {
    mode = intro;
    lives = 3;
    score = 0;
    x = 400;
    y = 400;
    vx = random(-5, 5);
    vy = random(-5, 5);
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 600) {
    mode = game;
    lives = 3;
    score = 0;
    x = 400;
    y = 400;
    vx = random(-5, 5);
    vy = random(-5, 5);
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 650 && mouseY < 700) {
    exit();
  }
}
