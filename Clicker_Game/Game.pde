void game() {
  background(222, 215, 247);
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

}
