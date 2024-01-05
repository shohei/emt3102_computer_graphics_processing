import pallav.Matrix.*;

void setup()
{
  size(640, 480, P3D);
}

void draw()
{
  background(127, 127, 127);
  camera(100, -100, 100, 0, 0, 0, 0, 1, 0);
  axis(100);
  sphereandaxis();
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

void sphereandaxis()
{
  translate(0, -50, 0);
  axis(30);
  stroke(0, 0, 0);
  float[][] vertices=boxVertices(20);
  //USE HOMOGENEOUS MATRIX FOR TRANSFORMATION
  float [][]rotMat = rotationMatrix(PI/4,0,0);
  vertices = transformVertices(vertices, rotMat);
  //END OF TRANSFORMATION
  drawVertices(vertices);
}

float [][] convertToHomogeneousMatrix(float[][] vertices)
{
  float[][] homogeneousMatrix = new float[4][vertices.length];
  for(int i=0;i<vertices.length;i++)
  {
    float[] v = vertices[i];
    homogeneousMatrix[0][i] = v[0];
    homogeneousMatrix[1][i] = v[1];
    homogeneousMatrix[2][i] = v[2];
    homogeneousMatrix[3][i] = 1;
  }
  return homogeneousMatrix;
}

float[][] transformVertices(float[][] vertices, float[][] matrix)
{
  float[][] homogeneousMatrix = convertToHomogeneousMatrix(vertices);
  homogeneousMatrix = Matrix.Multiply(matrix,homogeneousMatrix);
  for(int i=0;i<homogeneousMatrix[0].length;i++){
    vertices[i][0] = homogeneousMatrix[0][i];
    vertices[i][1] = homogeneousMatrix[1][i];
    vertices[i][2] = homogeneousMatrix[2][i];
  }
  return vertices;
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
  for (int i=0; i<vertices.length; i++) {
    vertex(vertices[i][0], vertices[i][1], vertices[i][2]);
  }
  endShape();
}

float[][] rotationMatrix(float qx, float qy, float qz)
{
  float[][] z1 = {
    {1,0,0,0},
    {0,cos(qx),-sin(qx),0},
    {0,sin(qx),cos(qx),0},
    {0,0,0,1}
  };
  float[][] z2 = {
    {cos(qy),0,sin(qy),0},
    {0,1,0,0},
    {-sin(qy),0,cos(qy),0},
    {0,0,0,1}
  };
  float[][] z3 = {
    {cos(qz),-sin(qz),0,0},
    {sin(qz),cos(qz),0,0},
    {0,0,1,0},
    {0,0,0,1}
  };
  float[][] z2z1 = Matrix.Multiply(z2,z1);
  float[][] z3z2z1 = Matrix.Multiply(z3,z2z1);
  return z3z2z1;
}
