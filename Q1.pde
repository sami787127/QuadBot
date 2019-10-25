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

//final float[][] MOUTH = {
//  {-0.1, 0.33},
//  {0.1, 0.33},
//  {0.1,0.3},
//  {-0.1,0.3}
//};
final float ONE_THIRD = ((1.0-2.0/3.0)+2.0/6);
void setup(){
  size(640, 640, P3D);
  ortho(-1,1,1,-1);
  resetMatrix();
  noLoop();
}


void draw(){
  background(152,251,152);
  //translate(-0.5, 0.5);
  //rotate(PI/3f);
  scale(1.0/3f);
  drawQuadBot();
  resetMatrix();
  
 drawQuadBot1();
 resetMatrix();
 drawQuadBot2();
 drawQuadBot3();
 drawQuadBot4();
  
 
  
}

void drawQuadBot1(){
  pushMatrix();
  translate(-ONE_THIRD,ONE_THIRD);
  
  rotate(PI/3);
  scale(1.0/3f);
  drawQuadBot();
  popMatrix();
}

void drawQuadBot2(){
  pushMatrix();
  //to put the quadbot at the ground, we need to know where the y value of foot of the quadbot ends up after scaling
  
  float afterSingleScaleY = -0.969*(1.0/3);
  float afterDoubleScaleY = afterSingleScaleY*(0.65);
  float originY = (1.0-2.0/3)+abs(afterDoubleScaleY);
  
  translate(0, originY);
  scale(0.8,0.65);
  scale(1.0/3);
  printMatrix();
  drawQuadBot();
  popMatrix();
  
}

void drawQuadBot3(){
  float[] headCenter = getHeadCenter();
  float headCenterX = headCenter[0];
  float headCenterY = headCenter[1];
  
  pushMatrix();
  translate(ONE_THIRD, ONE_THIRD);
  scale(2.25);
  scale(1.0/3.0);
  translate(-headCenterX, -headCenterY);
  drawHead();
  drawTotalHead();
  
  popMatrix();
  
}


void drawQuadBot4(){
 
  pushMatrix();
  translate(-ONE_THIRD, 0);
  scale(1.0/3.0);
  rotate(PI/12);
  drawTotalHead();
  popMatrix();
  pushMatrix();
  translate(-ONE_THIRD, 0);
  scale(1.0/3.0);
  drawTorso();
  drawUpperRightLeg();
  drawUpperLeftLeg();
  drawLowerRightLeg();
  drawLowerLeftLeg();
  drawUpperRightArm();
  drawUpperLeftArm();
  drawLowerRightArm();
  popMatrix();
  pushMatrix();
  float armX = 0.0;
  float armY = 0.0;
  for(int i = 0; i<2; i++){
    armX += LOWER_ARM[i][0];
    armY += LOWER_ARM[i][1];
  }
  armX = armX/2.0;
  armY = armY/2.0;
  translate(-ONE_THIRD, 0);
  scale(1.0/3.0);
  translate(-armX, armY);
  rotate(-(PI/3+PI/2));
  translate(armX, -armY);
  drawLowerLeftArm();
  popMatrix();
  //drawMouth();
  
  
  
}

float[] getHeadCenter(){
  float headCenterX = 0.0;
  float headCenterY = 0.0;
  for(int i = 0; i<HEAD.length; i++){
    headCenterX += HEAD[i][0];
    headCenterY += HEAD[i][1];
  }
  headCenterX = headCenterX/4.0;
  headCenterY = headCenterY/4.0;
  return new float[]{headCenterX, headCenterY};
}

void drawQuadBot(){
  drawTotalHead();
  drawTorso();
  drawUpperRightLeg();
  drawUpperLeftLeg();
  drawLowerRightLeg();
  drawLowerLeftLeg();
  drawUpperRightArm();
  drawUpperLeftArm();
  drawLowerRightArm();
  drawLowerLeftArm();
  //drawMouth();
}
void drawTotalHead(){
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
}

void drawHead(){
  beginShape(QUADS);
  fill(30,144,255);
  for(int i = 0; i<HEAD.length; i++){
    vertex(HEAD[i][0], HEAD[i][1]);
  }
  
  endShape();
}

void drawRightEyeBrow(){
  beginShape(QUADS);
  fill(189,183,107);
  for(int i = 0; i<EYEBROW.length; i++){
    vertex(EYEBROW[i][0], EYEBROW[i][1]);
  }
  
  endShape();
}
void drawLeftEyeBrow(){
  pushMatrix();
  scale(-1.0, 1.0);
  drawRightEyeBrow();
  popMatrix();
}

void drawRightEye(){
  beginShape(QUADS);
  fill(255,255,224);
  for(int i = 0; i<EYE.length; i++){
    vertex(EYE[i][0], EYE[i][1]);
  }
  
  endShape();
}

void drawLeftEye(){
  pushMatrix();
  scale(-1.0,1.0);
  drawRightEye();
  popMatrix();
}

void drawRightEyeBall(){
  beginShape(QUADS);
  fill(0,255,0);
  for(int i = 0; i<EYEBALL.length; i++){
    vertex(EYEBALL[i][0], EYEBALL[i][1]);
  }
  
  endShape();
}
void drawLeftEyeBall(){
  pushMatrix();
  scale(-1.0,1.0);
  drawRightEyeBall();
  popMatrix();
}

void drawNose(){
  beginShape(QUADS);
  fill(255,0,0);
  for(int i = 0; i<NOSE.length; i++){
    vertex(NOSE[i][0], NOSE[i][1]);
  }
  
  endShape();
}

void drawLowerRightAntenna(){
  beginShape(QUADS);
  fill(192,192,192);
  for(int i = 0; i<LOWER_ANTENNA.length; i++){
    vertex(LOWER_ANTENNA[i][0], LOWER_ANTENNA[i][1]);
  }
  
  endShape();
}

void drawLowerLeftAntenna(){
  pushMatrix();
  scale(-1.0,1.0);
  drawLowerRightAntenna();
  popMatrix();
}

void drawUpperRightAntenna(){
  beginShape(QUADS);
  fill(192,192,192);
  for(int i = 0; i<UPPER_ANTENNA.length; i++){
    vertex(UPPER_ANTENNA[i][0], UPPER_ANTENNA[i][1]);
  }
  
  endShape();
}

void drawUpperLeftAntenna(){
  pushMatrix();
  scale(-1.0,1.0);
  drawUpperRightAntenna();
  popMatrix();
}

void drawTorso(){
  beginShape(QUADS);
  fill(75,0,130);
  for(int i = 0; i<TORSO.length; i++){
    vertex(TORSO[i][0], TORSO[i][1]);
  }
  
  endShape();
}

void drawUpperRightLeg(){
  beginShape(QUADS);
  fill(255,255,0);
  for(int i = 0; i<UPPER_LEG.length; i++){
    vertex(UPPER_LEG[i][0], UPPER_LEG[i][1]);
  }
  
  endShape();
}
void drawUpperLeftLeg(){
  pushMatrix();
  scale(-1.0,1.0);
  drawUpperRightLeg();
  popMatrix();
}
void drawLowerRightLeg(){
  beginShape(QUADS);
  fill(255,255,0);
  for(int i = 0; i<LOWER_LEG.length; i++){
    vertex(LOWER_LEG[i][0], LOWER_LEG[i][1]);
  }
  
  endShape();
}
void drawLowerLeftLeg(){
  pushMatrix();
  scale(-1.0,1.0);
  drawLowerRightLeg();
  popMatrix();
}
void drawUpperRightArm(){
  beginShape(QUADS);
  fill(72,61,139);
  for(int i = 0; i<UPPER_ARM.length; i++){
    vertex(UPPER_ARM[i][0], UPPER_ARM[i][1]);
  }
  
  endShape();
}
void drawUpperLeftArm(){
  pushMatrix();
  scale(-1.0,1.0);
  drawUpperRightArm();
  popMatrix();
}
void drawLowerRightArm(){
  beginShape(QUADS);
  fill(72,61,139);
  for(int i = 0; i<LOWER_ARM.length; i++){
    vertex(LOWER_ARM[i][0], LOWER_ARM[i][1]);
  }
  
  endShape();
}
void drawLowerLeftArm(){
  pushMatrix();
  scale(-1.0,1.0);
  drawLowerRightArm();
  popMatrix();
}

//void drawMouth(){
//  beginShape(QUADS);
//  for(int i = 0; i<MOUTH.length; i++){
//    vertex(MOUTH[i][0], MOUTH[i][1]);
//  }
  
//  endShape();
//}
