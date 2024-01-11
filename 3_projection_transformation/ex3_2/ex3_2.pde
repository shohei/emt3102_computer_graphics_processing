void setup()
{
  size(640, 360, P3D);
  noStroke();
  fill(204);
}
void draw()
{
  background(0);
  lights();
  translate(width/2, height/2, 0);
  if (mousePressed) {
    perspective();//default
  } else {
    ortho(-width/2, width/2, -height/2, height/2, -10, 10);
    ortho();
  }
  rotateX(-PI/6);
  rotateY(PI/3);
  box(160);
}
