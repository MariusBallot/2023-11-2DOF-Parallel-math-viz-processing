float j = 200;

float posToAngle(float dist) {
  float th = acos((dist/2)/j);
  return th;
}

void setup() {
  size(1000, 1000);
}

void draw() {
  background(255);

  float mousePosX = mouseX-width/2;
  float mousePosY= mouseY-height/2;

  float th = posToAngle(dist(0, 0, mousePosX, mousePosY));

  pushMatrix();
  translate(width/2, height/2);

  pushMatrix();
  rotate(atan2(mousePosY, mousePosX));
  rotate(th);

  strokeWeight(5);
  point(0, 0);
  strokeWeight(1);
  line(0, 0, j, 0);

  translate(j, 0);
  rotate(-th*2);

  strokeWeight(5);
  point(0, 0);
  strokeWeight(1);
  line(0, 0, j, 0);
  popMatrix();



  pushMatrix();
  rotate(atan2(mousePosY, mousePosX));
  rotate(-th);
  strokeWeight(5);
  point(0, 0);
  strokeWeight(1);
  line(0, 0, j, 0);

  translate(j, 0);
  rotate(th*2);

  strokeWeight(5);
  point(0, 0);
  strokeWeight(1);
  line(0, 0, j, 0);
  popMatrix();
  popMatrix();

  println(mousePosX, mousePosY);
}
