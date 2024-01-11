float d = 0;
void setup() {
  size(500, 500, P3D);
  //ortho();
}

void draw() {
  translate(200, 200, 0.866 * width);
  background(200);
  float zoffset = -500;
  float s = 100;
  float cs = s * sqrt(2) * cos(d);
  float sn = s * sqrt(2) * sin(d);
  line(-cs, -s, -sn + zoffset,
    +sn, -s, -cs + zoffset);
  line(+sn, -s, -cs + zoffset,
    +sn, +s, -cs + zoffset);
  line(+sn, +s, -cs + zoffset,
    -cs, +s, -sn + zoffset);
  line(-cs, +s, -sn + zoffset,
    -cs, -s, -sn + zoffset);
  line(-sn, -s, +cs + zoffset,
    +cs, -s, +sn + zoffset);
  line(+cs, -s, +sn + zoffset,
    +cs, +s, +sn + zoffset);
  line(+cs, +s, +sn + zoffset,
    -sn, +s, +cs + zoffset);
  line(-sn, +s, +cs + zoffset,
    -sn, -s, +cs + zoffset);
  line(-cs, -s, -sn + zoffset,
    -sn, -s, +cs + zoffset);
  line(+sn, -s, -cs + zoffset,
    +cs, -s, +sn + zoffset);
  line(+sn, +s, -cs + zoffset,
    +cs, +s, +sn + zoffset);
  line(-cs, +s, -sn + zoffset,
    -sn, +s, +cs + zoffset);
  d += 0.01;
}
