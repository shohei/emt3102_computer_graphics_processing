void setup()
{
  size(640, 480, P3D);
  camera(100, -100, 100, 0, 0, 0, 0, 1, 0);
}

void draw()
{
  background(127, 127, 127);
  axis(100);
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
