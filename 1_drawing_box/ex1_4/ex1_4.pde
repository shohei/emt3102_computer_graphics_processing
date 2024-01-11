import pallav.Matrix.*;

void setup()
{
  size(640, 480, P3D);
  camera(100, -100, 100, 0, 0, 0, 0, 1, 0);
  background(127);
  axis(50);
  stroke(0, 0, 0);
  vertices=boxVertices(100);
}

int c = 0;
float[][] vertices;
void draw()
{
  if (c<24) {
    fill(random(255), random(255), random(255));
    textSize(30);
    text("F"+str(c/4+1), -250+c*10, -50, 0);
    beginShape(QUADS);
    println(c);
    vertex(vertices[c][0], vertices[c][1], vertices[c][2]);
    vertex(vertices[c+1][0], vertices[c+1][1], vertices[c+1][2]);
    vertex(vertices[c+2][0], vertices[c+2][1], vertices[c+2][2]);
    vertex(vertices[c+3][0], vertices[c+3][1], vertices[c+3][2]);
    endShape();
    c+=4;
    delay(1000);
  }
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


float[][] boxVertices(float s) {
  s = s/2;
  float[][] box={
    {-s, s, s},
    { s, s, s},
    { s, -s, s},
    {-s, -s, s},
    { s, s, s},
    { s, s, -s},
    { s, -s, -s},
    { s, -s, s},
    { s, s, -s},
    {-s, s, -s},
    {-s, -s, -s},
    { s, -s, -s},
    {-s, s, -s},
    {-s, s, s},
    {-s, -s, s},
    {-s, -s, -s},
    {-s, s, -s},
    { s, s, -s},
    { s, s, s},
    {-s, s, s},
    {-s, -s, -s},
    { s, -s, -s},
    { s, -s, s},
    {-s, -s, s}
  };
  return box;
}

void drawVertices(float[][] vertices) {
  beginShape(QUADS);
  fill(random(255));
  for (int i=0; i<4; i++) {
    vertex(vertices[i][0], vertices[i][1], vertices[i][2]);
  }
  fill(random(255));
  for (int i=4; i<8; i++) {
    vertex(vertices[i][0], vertices[i][1], vertices[i][2]);
  }
  fill(random(255));
  for (int i=8; i<12; i++) {
    vertex(vertices[i][0], vertices[i][1], vertices[i][2]);
  }
  fill(random(255));
  for (int i=12; i<16; i++) {
    vertex(vertices[i][0], vertices[i][1], vertices[i][2]);
  }
  fill(random(255));
  for (int i=16; i<20; i++) {
    vertex(vertices[i][0], vertices[i][1], vertices[i][2]);
  }
  fill(random(255));
  for (int i=20; i<24; i++) {
    vertex(vertices[i][0], vertices[i][1], vertices[i][2]);
  }
  endShape();
}
