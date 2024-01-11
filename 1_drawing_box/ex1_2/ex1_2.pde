void setup()
{
  size(640, 480, P3D);
  camera(100, -100, 100, 0, 0, 0, 0, 1, 0);
}

void draw()
{
  background(127, 127, 127);
  axis(100);
  box_and_axis();
}

void axis(float l)
{
  stroke(255, 0, 0);
  line(0, 0, 0, l, 0, 0);
  stroke(0, 255, 0);
  line(0, 0, 0, 0, l, 0);
  stroke(0, 0, 255);
  line(0, 0, 0, 0, 0, l);
}

void box_and_axis()
{
  translate(0, -50, 0);
  rotate(radians(45), 0, 0, 0);
  axis(30);
  stroke(0, 0, 0);
  box(20);
}
