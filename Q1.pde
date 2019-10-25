final float[][] HEAD = {
  { 0.235, 0.697 },
  { -0.237, 0.694 },
  { -0.183, 0.231 },
  { 0.210, 0.228 }
};

final float[][] EYEBROW = {
  { 0.051, 0.637 },
  { 0.042, 0.597 },
  { 0.192, 0.594 },
  { 0.192, 0.628 }
};

final float[][] EYE = {
  { 0.042, 0.559 },
  { 0.160, 0.563 },
  { 0.148, 0.459 },
  { 0.045, 0.459 }
};

final float[][] EYEBALL = {
  { 0.089, 0.528 },
  { 0.089, 0.497 },
  { 0.133, 0.500 },
  { 0.133, 0.541 }
};

final float[][] NOSE = {
  { 0.010, 0.472 },
  { -0.024, 0.472 },
  { -0.046, 0.366 },
  { 0.048, 0.375 }
};

final float[][] LOWER_ANTENNA = {
  { 0.145, 0.837 },
  { 0.117, 0.675 },
  { 0.160, 0.684 },
  { 0.192, 0.831 }
};

final float[][] UPPER_ANTENNA = {
  { 0.167, 0.781 },
  { 0.345, 0.856 },
  { 0.301, 0.913 },
  { 0.163, 0.834 }
};

final float[][] TORSO = {
  { -0.065, 0.244 },
  { 0.085, 0.244 },
  { 0.198, -0.503 },
  { -0.240, -0.494 }
};

final float[][] UPPER_LEG = {
  { 0.148, -0.478 },
  { 0.042, -0.513 },
  { 0.132, -0.772 },
  { 0.245, -0.709 }
};

final float[][] LOWER_LEG = {
  { 0.145, -0.725 },
  { 0.214, -0.712 },
  { 0.260, -0.969 },
  { 0.095, -0.969 }
};

final float[][] UPPER_ARM = {
  { 0.107, -0.034 },
  { 0.092, 0.075 },
  { 0.410, 0.156 },
  { 0.398, 0.034 }
};

final float[][] LOWER_ARM = {
  { 0.351, 0.066 },
  { 0.404, 0.125 },
  { 0.579, -0.209 },
  { 0.464, -0.225 }
};

final float[][] MOUTH = {
  {-0.1, 0.33},
  {0.1, 0.33},
  {0.1,0.3},
  {-0.1,0.3}
};

void setup(){
  size(640, 640, P3D);
  ortho(-1,1,1,-1);
  resetMatrix();
}


void draw(){
  drawQuadBot();
}

void drawQuadBot(){
  drawHead();
  drawRightEyeBrow();
  drawLeftEyeBrow();
  drawRightEye();
  drawLeftEye();
  drawRightEyeBall();
  drawLeftEyeBall();
  drawRightEyeBall();
  drawNose();
  drawLowerRightAntenna();
  drawLowerLeftAntenna();
  drawUpperRightAntenna();
  drawUpperLeftAntenna();
  drawTorso();
  drawUpperRightLeg();
  drawUpperLeftLeg();
  drawLowerRightLeg();
  drawLowerLeftLeg();
  drawUpperRightArm();
  drawUpperLeftArm();
  drawLowerRightArm();
  drawLowerLeftArm();
  drawMouth();
}

void drawHead(){
  beginShape(QUADS);
  for(int i = 0; i<HEAD.length; i++){
    vertex(HEAD[i][0], HEAD[i][1]);
  }
  
  endShape();
}

void drawRightEyeBrow(){
  beginShape(QUADS);
  for(int i = 0; i<EYEBROW.length; i++){
    vertex(EYEBROW[i][0], EYEBROW[i][1]);
  }
  
  endShape();
}
void drawLeftEyeBrow(){
  beginShape(QUADS);
  for(int i = 0; i<EYEBROW.length; i++){
    vertex(-1*EYEBROW[i][0], EYEBROW[i][1]);
  }
  
  endShape();
}

void drawRightEye(){
  beginShape(QUADS);
  for(int i = 0; i<EYE.length; i++){
    vertex(EYE[i][0], EYE[i][1]);
  }
  
  endShape();
}

void drawLeftEye(){
  beginShape(QUADS);
  for(int i = 0; i<EYE.length; i++){
    vertex(-1*EYE[i][0], EYE[i][1]);
  }
  
  endShape();
}

void drawRightEyeBall(){
  beginShape(QUADS);
  for(int i = 0; i<EYEBALL.length; i++){
    vertex(EYEBALL[i][0], EYEBALL[i][1]);
  }
  
  endShape();
}
void drawLeftEyeBall(){
  beginShape(QUADS);
  for(int i = 0; i<EYEBALL.length; i++){
    vertex(-1*EYEBALL[i][0], EYEBALL[i][1]);
  }
  
  endShape();
}

void drawNose(){
  beginShape(QUADS);
  for(int i = 0; i<NOSE.length; i++){
    vertex(NOSE[i][0], NOSE[i][1]);
  }
  
  endShape();
}

void drawLowerRightAntenna(){
  beginShape(QUADS);
  for(int i = 0; i<LOWER_ANTENNA.length; i++){
    vertex(LOWER_ANTENNA[i][0], LOWER_ANTENNA[i][1]);
  }
  
  endShape();
}

void drawLowerLeftAntenna(){
  beginShape(QUADS);
  for(int i = 0; i<LOWER_ANTENNA.length; i++){
    vertex(-1*LOWER_ANTENNA[i][0], LOWER_ANTENNA[i][1]);
  }
  
  endShape();
}

void drawUpperRightAntenna(){
  beginShape(QUADS);
  for(int i = 0; i<UPPER_ANTENNA.length; i++){
    vertex(UPPER_ANTENNA[i][0], UPPER_ANTENNA[i][1]);
  }
  
  endShape();
}

void drawUpperLeftAntenna(){
  beginShape(QUADS);
  for(int i = 0; i<UPPER_ANTENNA.length; i++){
    vertex(-1*UPPER_ANTENNA[i][0], UPPER_ANTENNA[i][1]);
  }
  
  endShape();
}

void drawTorso(){
  beginShape(QUADS);
  for(int i = 0; i<TORSO.length; i++){
    vertex(TORSO[i][0], TORSO[i][1]);
  }
  
  endShape();
}

void drawUpperRightLeg(){
  beginShape(QUADS);
  for(int i = 0; i<UPPER_LEG.length; i++){
    vertex(UPPER_LEG[i][0], UPPER_LEG[i][1]);
  }
  
  endShape();
}
void drawUpperLeftLeg(){
  beginShape(QUADS);
  for(int i = 0; i<UPPER_LEG.length; i++){
    vertex(-1*UPPER_LEG[i][0], UPPER_LEG[i][1]);
  }
  
  endShape();
}
void drawLowerRightLeg(){
  beginShape(QUADS);
  for(int i = 0; i<LOWER_LEG.length; i++){
    vertex(LOWER_LEG[i][0], LOWER_LEG[i][1]);
  }
  
  endShape();
}
void drawLowerLeftLeg(){
  beginShape(QUADS);
  for(int i = 0; i<LOWER_LEG.length; i++){
    vertex(-1*LOWER_LEG[i][0], LOWER_LEG[i][1]);
  }
  
  endShape();
}
void drawUpperRightArm(){
  beginShape(QUADS);
  for(int i = 0; i<UPPER_ARM.length; i++){
    vertex(UPPER_ARM[i][0], UPPER_ARM[i][1]);
  }
  
  endShape();
}
void drawUpperLeftArm(){
  beginShape(QUADS);
  for(int i = 0; i<UPPER_ARM.length; i++){
    vertex(-1*UPPER_ARM[i][0], UPPER_ARM[i][1]);
  }
  
  endShape();
}
void drawLowerRightArm(){
  beginShape(QUADS);
  for(int i = 0; i<LOWER_ARM.length; i++){
    vertex(LOWER_ARM[i][0], LOWER_ARM[i][1]);
  }
  
  endShape();
}
void drawLowerLeftArm(){
  beginShape(QUADS);
  for(int i = 0; i<LOWER_ARM.length; i++){
    vertex(-1*LOWER_ARM[i][0], LOWER_ARM[i][1]);
  }
  
  endShape();
}

void drawMouth(){
  beginShape(QUADS);
  for(int i = 0; i<MOUTH.length; i++){
    vertex(MOUTH[i][0], MOUTH[i][1]);
  }
  
  endShape();
}
