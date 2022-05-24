void game() {
  background(222, 215, 247);
  
  textSize(30); 
  fill(black);
  text("Score: " + score, 400, 50);
  fill(lifePoints);
  text("Lives: " + lives, 200, 50);
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
  
  stroke(black);
  fill(ball);
  strokeWeight(5);
  circle(x, y, d);
  x = x + vx;
  y = y + vy;
  
  if (x < d/2 || x > 800 - d/2) {
    vx = vx * -1;
  }
  if (y < d/2 || y > 800 - d/2) {
    vy = vy * -1;
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;
    if (vx > 0) {
      vx = vx + 1;
    } else {
      vx = vx - 1;
    }
    if (vy > 0) {
      vy = vy + 1;
    } else {
      vy = vy - 1;
    }
  } else if (mouseX > 700 && mouseX < 750 && mouseY > 35 && mouseY < 85) {
    mode = pause;
  } else {
    lives = lives - 1;
  }
  if (mouseX > 700 && mouseX < 750 && mouseY > 35 && mouseY < 85) {
  }
}
