void intro() {
  background(white);
  
  stroke(black);
  fill(ball);
  circle(x2, y2, d);
  x2 = x2 + vx2;
  y2 = y2 + vy2;
  if (x2 < d/2 || x2 > 800 - d/2) {
    vx2 = vx2 * -1;
  }
  if (y2 < d/2 || y2 > 800 - d/2) {
    vy2 = vy2 * -1;
  }

  fill(white);
  strokeWeight(3);
  stroke(startSelect);
  rect(300, 400, 200, 50);
  stroke(optionsSelect);
  rect(300, 500, 200, 50);
  stroke(quitSelect);
  rect(300, 600, 200, 50);
  fill(black);
  textSize(60);
  text("Clicker Game", 400, 250);
  textSize(30);
  text("Start", 400, 425);
  text("Options", 400, 525);
  text("Quit", 400, 625);
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 450) {
    mode = game;
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 550) {
    mode = options;
  }
  if (mouseX > 300 && mouseX < 500 && mouseY > 600 && mouseY < 650) {
    exit();
  }
}
