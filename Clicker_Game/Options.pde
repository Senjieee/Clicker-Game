void options() {
  background(white);
  
  strokeWeight(3);
  stroke(backSelect);
  fill(white);
  rect(50, 50, 200, 50);
  fill(black);
  textSize(30);
  text("Back", 150, 70);
  
  fill(ball);
  stroke(black);
  circle(400, 250, d);
  strokeWeight(5);
  fill(red);
  stroke(selectedColorRed);
  circle(90, 400, 50);
  fill(blue);
  stroke(selectedColorBlue);
  circle(180, 400, 50);
  fill(yellow);
  stroke(selectedColorYellow);
  circle(270, 400, 50);
  fill(green);
  stroke(selectedColorGreen);
  circle(360, 400, 50);
  fill(orange);
  stroke(selectedColorOrange);
  circle(450, 400, 50);
  fill(purple);
  stroke(selectedColorPurple);
  circle(540, 400, 50);
  fill(black);
  stroke(selectedColorBlack);
  circle(630, 400, 50);
  fill(white);
  stroke(selectedColorWhite);
  circle(720, 400, 50);
  stroke(black);
  line(200, 500, 600, 500);
  stroke(sliderSelect);
  fill(ball);
  circle(sliderX, 500, 50);
}

void optionsClicks() {
  if (mouseX > 50 && mouseX < 250 && mouseY > 50 && mouseY < 100) {
    mode = intro;
  }
  if (dist(90, 400, mouseX, mouseY) < 25) {
    ball = red;
  }
  if (dist(180, 400, mouseX, mouseY) < 25) {
    ball = blue;
  }
  if (dist(270, 400, mouseX, mouseY) < 25) {
    ball = yellow;
  }
  if (dist(360, 400, mouseX, mouseY) < 25) {
    ball = green;
  }
  if (dist(450, 400, mouseX, mouseY) < 25) {
    ball = orange;
  }
  if (dist(540, 400, mouseX, mouseY) < 25) {
    ball = purple;
  }
  if (dist(630, 400, mouseX, mouseY) < 25) {
    ball = black;
  }
  if (dist(720, 400, mouseX, mouseY) < 25) {
    ball = white;
  }
  if (mode == options) {
    if (mouseX > 190 && mouseX < 610 && mouseY > 480 && mouseY < 520) {
      sliderX = mouseX;
    }
    d = map(sliderX, 200, 600, 20, 200);
  }
}

void mouseDragged() {
  if (mode == options) {
    if (mouseX > 190 && mouseX < 610 && mouseY > 480 && mouseY < 520) {
      sliderX = mouseX;
    }
    d = map(sliderX, 200, 600, 20, 200);
  }
}
