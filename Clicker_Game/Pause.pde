void pause() {
  background(white);
  
  textSize(30);
  fill(black);
  text("Score: " + score, 400, 50);
  fill(lifePoints);
  text("Lives: " + lives, 200, 50);
  
  stroke(black);
  fill(ball);
  strokeWeight(5);
  circle(x, y, d);
  
  fill(white);
  strokeWeight(3);
  stroke(pauseSelect);
  rect(700, 35, 50, 50);
  fill(pauseSelect);
  if (mode == game) {
    rect(712, 45, 5, 30);
    rect(733, 45, 5, 30);
  } else if (mode == pause) {
    triangle(715, 45, 715, 75, 735, 60);
  }
  
  fill(black);
  stroke(black);
  textSize(60);
  text("Pause", 400, 400);
}

void pauseClicks() {
  if (mouseX > 700 && mouseX < 750 && mouseY > 35 && mouseY < 85) {
    mode = game;
  }
}
