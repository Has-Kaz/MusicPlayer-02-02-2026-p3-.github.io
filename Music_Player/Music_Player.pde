//
//Minim Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//
float ColorOneDivX ;
float ColorOneDivY ;
float ColorOneDivWidth ;
float ColorOneDivHeight ;
float LyricsBoxDivX ;
float LyricsBoxDivY ;
float LyricsBoxDivWidth ;
float LyricsBoxDivHeight ;
float TitleDivX ;
float TitleDivY ;
float TitleDivWidth ;
float TitleDivHeight ;
float LoopDivX ;
float LoopDivY ;
float LoopDivWidth ;
float LoopDivHeight ;
float RewindDivX ;
float RewindDivY ;
float RewindDivWidth ;
float RewindDivHeight ;
float PreviousDivX ;
float PreviousDivY ;
float PreviousDivWidth ;
float PreviousDivHeight ;
float PreviousCenterX ;
float PreviousCenterY ;
float PreviousArrowWidth ;
float PausePlayDivX ;
float PausePlayDivY ;
float PausePlayDivWidth ;
float PausePlayDivHeight ;
float NextDivX ;
float NextDivY ;
float NextDivWidth ;
float NextDivHeight ;
float NextCenterX ;
float NextCenterY ;
float NextArrowWidth ;
float FastForwardDivX ;
float FastForwardDivY ;
float FastForwardDivWidth ;
float FastForwardDivHeight ;
float ShuffleDivX ;
float ShuffleDivY ;
float ShuffleDivWidth ;
float ShuffleDivHeight ;
float LineEndOneX ;
float LineEndOneY ;
float LineEndTwoX ;
float LineEndTwoY ;
float SongPicOneDivX ;
float SongPicOneDivY ;
float SongPicOneDivWidth ;
float SongPicOneDivHeight ;
float SongeTitleOneDivX ;
float SongeTitleOneDivY ;
float SongeTitleOneDivWidth ;
float SongeTitleOneDivHeight ;
float SongPicTwoDivX ;
float SongPicTwoDivY ;
float SongPicTwoDivWidth ;
float SongPicTwoDivHeight ;
float SongeTitleTwoDivX ;
float SongeTitleTwoDivY ;
float SongeTitleTwoDivWidth ;
float SongeTitleTwoDivHeight ;
float SongPicThreeDivX ;
float SongPicThreeDivY ;
float SongPicThreeDivWidth ;
float SongPicThreeDivHeight ;
float SongeTitleThreeDivX ;
float SongeTitleThreeDivY ;
float SongeTitleThreeDivWidth ;
float SongeTitleThreeDivHeight ;
float SongPicFourDivX ;
float SongPicFourDivY ;
float SongPicFourDivWidth ;
float SongPicFourDivHeight ;
float SongeTitleFourDivX ;
float SongeTitleFourDivY ;
float SongeTitleFourDivWidth ;
float SongeTitleFourDivHeight ;
float SongPicFiveDivX ;
float SongPicFiveDivY ;
float SongPicFiveDivWidth ;
float SongPicFiveDivHeight ;
float SongeTitleFiveDivX ;
float SongeTitleFiveDivY ;
float SongeTitleFiveDivWidth ;
float SongeTitleFiveDivHeight ;
float radius ;
float loopCenterX ;
float loopCenterY ;
float rewindCenterX ;
float rewindCenterY ;
int appWidth;
int appHeight;
float scaleFactor;
final int DesignWidth = 470;
final int DesignHeight = 1000;
void settings() {
  fullScreen();
}
void setup() {
  println(displayWidth, displayHeight);
  appWidth = DesignWidth;
  appHeight = DesignHeight;
  int paperWidth = 120;
  int paperHeight = 280;
  //

  LyricsBoxDivX = appWidth * -10 / paperWidth;
  LyricsBoxDivY = appHeight * 35 / paperHeight;
  LyricsBoxDivWidth = appWidth * 140 / paperWidth;
  LyricsBoxDivHeight = appHeight * 60 / paperHeight;

  TitleDivX = appWidth * -10 / paperWidth;
  TitleDivY = appHeight * 10 / paperHeight;
  TitleDivWidth = appWidth * 140 / paperWidth;
  TitleDivHeight = appHeight * 22.5 / paperHeight;

  LoopDivX = appWidth * -10 / paperWidth;
  LoopDivY = appHeight * 100 / paperHeight;
  LoopDivWidth = appWidth * 20 / paperWidth;
  LoopDivHeight = appHeight * 20 / paperHeight;

  RewindDivX = appWidth * 10 / paperWidth;
  RewindDivY = appHeight * 100 / paperHeight;
  RewindDivWidth = appWidth * 20 / paperWidth;
  RewindDivHeight = appHeight * 20 / paperHeight;

  PreviousDivX = appWidth * 30 / paperWidth;
  PreviousDivY = appHeight * 100 / paperHeight;
  PreviousDivWidth = appWidth * 20 / paperWidth;
  PreviousDivHeight = appHeight * 20 / paperHeight;
  PreviousCenterX = PreviousDivX + (PreviousDivWidth / 2) ;
  PreviousCenterY = PreviousDivY + (PreviousDivHeight / 2) ;
  PreviousArrowWidth = (PreviousDivHeight / 10) * 7 ;

  PausePlayDivX = appWidth * 50 / paperWidth;
  PausePlayDivY = appHeight * 100 / paperHeight;
  PausePlayDivWidth = appWidth * 20 / paperWidth;
  PausePlayDivHeight = appHeight * 20 / paperHeight;

  NextDivX = appWidth * 70 / paperWidth;
  NextDivY = appHeight * 100 / paperHeight;
  NextDivWidth = appWidth * 20 / paperWidth;
  NextDivHeight = appHeight * 20 / paperHeight;
  NextCenterX = NextDivX + (NextDivWidth / 2) ;
  NextCenterY = NextDivY + (NextDivHeight / 2) ;
  NextArrowWidth = (NextDivHeight / 10) * 7 ;

  FastForwardDivX = appWidth * 90 / paperWidth;
  FastForwardDivY = appHeight * 100 / paperHeight;
  FastForwardDivWidth = appWidth * 20 / paperWidth;
  FastForwardDivHeight = appHeight * 20 / paperHeight;

  ShuffleDivX = appWidth * 110 / paperWidth;
  ShuffleDivY = appHeight * 100 / paperHeight;
  ShuffleDivWidth = appWidth * 20 / paperWidth;
  ShuffleDivHeight = appHeight * 20 / paperHeight;

  LineEndOneX = appWidth * -30/ paperWidth;
  LineEndOneY = appHeight * 125 / paperHeight;
  LineEndTwoX = appWidth * 150 / paperWidth;
  LineEndTwoY = appHeight * 125 / paperHeight;

  SongPicOneDivX = appWidth * -10 / paperWidth;
  SongPicOneDivY = appHeight * 130 / paperHeight;
  SongPicOneDivWidth = appWidth * 20 / paperWidth;
  SongPicOneDivHeight = appHeight * 20 / paperHeight;

  SongeTitleOneDivX = appWidth * 10 / paperWidth;
  SongeTitleOneDivY = appHeight * 130 / paperHeight;
  SongeTitleOneDivWidth = appWidth * 120 / paperWidth;
  SongeTitleOneDivHeight = appHeight * 20 / paperHeight;

  SongPicTwoDivX = appWidth * -10 / paperWidth;
  SongPicTwoDivY = appHeight * 160 / paperHeight;
  SongPicTwoDivWidth = appWidth * 20 / paperWidth;
  SongPicTwoDivHeight = appHeight * 20 / paperHeight;

  SongeTitleTwoDivX = appWidth * 10 / paperWidth;
  SongeTitleTwoDivY = appHeight * 160 / paperHeight;
  SongeTitleTwoDivWidth = appWidth * 120 / paperWidth;
  SongeTitleTwoDivHeight = appHeight * 20 / paperHeight;

  SongPicThreeDivX = appWidth * -10 / paperWidth;
  SongPicThreeDivY = appHeight * 190 / paperHeight;
  SongPicThreeDivWidth = appWidth * 20 / paperWidth;
  SongPicThreeDivHeight = appHeight * 20 / paperHeight;

  SongeTitleThreeDivX = appWidth * 10 / paperWidth;
  SongeTitleThreeDivY = appHeight * 190 / paperHeight;
  SongeTitleThreeDivWidth = appWidth * 120 / paperWidth;
  SongeTitleThreeDivHeight = appHeight * 20 / paperHeight;

  SongPicFourDivX = appWidth * -10 / paperWidth;
  SongPicFourDivY = appHeight * 220 / paperHeight;
  SongPicFourDivWidth = appWidth * 20 / paperWidth;
  SongPicFourDivHeight = appHeight * 20 / paperHeight;

  SongeTitleFourDivX = appWidth * 10 / paperWidth;
  SongeTitleFourDivY = appHeight * 220 / paperHeight;
  SongeTitleFourDivWidth = appWidth * 120 / paperWidth;
  SongeTitleFourDivHeight = appHeight * 20 / paperHeight;

  SongPicFiveDivX = appWidth * -10 / paperWidth;
  SongPicFiveDivY = appHeight * 250 / paperHeight;
  SongPicFiveDivWidth = appWidth * 20 / paperWidth;
  SongPicFiveDivHeight = appHeight * 20 / paperHeight;

  SongeTitleFiveDivX = appWidth * 10 / paperWidth;
  SongeTitleFiveDivY = appHeight * 250 / paperHeight;
  SongeTitleFiveDivWidth = appWidth * 120 / paperWidth;
  SongeTitleFiveDivHeight = appHeight * 20 / paperHeight;
  //
}//End Setup
//
void draw() {
  background(255);
  scaleFactor = min(float(width) / appWidth, float(height) / appHeight);
  pushMatrix();
  translate((width - appWidth * scaleFactor) / 2, (height - appHeight * scaleFactor) / 2);
  scale(scaleFactor);
  drawInterface();
  popMatrix();
}

void drawInterface() {
  stroke(0);
  strokeWeight(2);
  noFill();
  rect( LyricsBoxDivX, LyricsBoxDivY, LyricsBoxDivWidth, LyricsBoxDivHeight );
  rect( TitleDivX, TitleDivY, TitleDivWidth, TitleDivHeight );
  rect( LoopDivX, LoopDivY, LoopDivWidth, LoopDivHeight );
  rect( RewindDivX, RewindDivY, RewindDivWidth, RewindDivHeight );
  rect( PreviousDivX, PreviousDivY, PreviousDivWidth, PreviousDivHeight );
  rect( PausePlayDivX, PausePlayDivY, PausePlayDivWidth, PausePlayDivHeight );
  rect( NextDivX, NextDivY, NextDivWidth, NextDivHeight );
  rect( FastForwardDivX, FastForwardDivY, FastForwardDivWidth, FastForwardDivHeight );
  rect( ShuffleDivX, ShuffleDivY, ShuffleDivWidth, ShuffleDivHeight );
  rect( SongPicOneDivX, SongPicOneDivY, SongPicOneDivWidth, SongPicOneDivHeight );
  rect( SongeTitleOneDivX, SongeTitleOneDivY, SongeTitleOneDivWidth, SongeTitleOneDivHeight );
  rect( SongPicTwoDivX, SongPicTwoDivY, SongPicTwoDivWidth, SongPicTwoDivHeight );
  rect( SongeTitleTwoDivX, SongeTitleTwoDivY, SongeTitleTwoDivWidth, SongeTitleTwoDivHeight );
  rect( SongPicThreeDivX, SongPicThreeDivY, SongPicThreeDivWidth, SongPicThreeDivHeight );
  rect( SongeTitleThreeDivX, SongeTitleThreeDivY, SongeTitleThreeDivWidth, SongeTitleThreeDivHeight );
  rect( SongPicFourDivX, SongPicFourDivY, SongPicFourDivWidth, SongPicFourDivHeight );
  rect( SongeTitleFourDivX, SongeTitleFourDivY, SongeTitleFourDivWidth, SongeTitleFourDivHeight );
  rect( SongPicFiveDivX, SongPicFiveDivY, SongPicFiveDivWidth, SongPicFiveDivHeight );
  rect( SongeTitleFiveDivX, SongeTitleFiveDivY, SongeTitleFiveDivWidth, SongeTitleFiveDivHeight );

  //
  //Line
  stroke(0);
  strokeWeight(3.5);
  line( LineEndOneX, LineEndOneY, LineEndTwoX, LineEndTwoY );

  // Loop Symbol Left Semi Circle
  radius = ( LoopDivWidth / 10 ) * 3 ;
  rewindCenterX = LoopDivX + ( LoopDivWidth / 2 );
  rewindCenterY = LoopDivY + ( LoopDivHeight / 2 );
  radius = ( LoopDivWidth / 10 ) * 3 ;
  loopCenterX = LoopDivX + ( LoopDivWidth / 2 );
  loopCenterY = LoopDivY + ( LoopDivHeight / 2 );
  float endX1 = loopCenterX - radius; // X-coordinate of the end point (cos(PI) * radius)
  float endY1 = loopCenterY;          // Y-coordinate of the end point (sin(PI) * radius = 0)
  float endX2 = loopCenterX + radius;
  float endY2 = loopCenterY ;

  // Loop Symbol Right Semi Circle
  stroke(0);
  strokeWeight(5);
  noFill();
  arc( loopCenterX, loopCenterY, radius * 2, radius * 2, 1.5, PI );
  float arrowSize = radius * 0.333333333 ; // Size of the arrowhead
  fill(0); // Black fill for the arrowhead
  //Loop Symbol Arrow Heads
  triangle(
    endX1, endY1, // Base of the arrowhead (end of the semi-circle)
    endX1 - arrowSize, endY1 - arrowSize / 2, // Left point of the arrowhead
    endX1 - arrowSize, endY1 + arrowSize / 2  // Right point of the arrowhead
    );
  stroke(0);
  strokeWeight(5);
  noFill();
  arc( loopCenterX, loopCenterY, radius * 2, radius * 2, 4.5, 6.5 );
  triangle(
    endX2, endY2, // Base of the arrowhead (end of the semi-circle)
    endX2 - arrowSize, endY2 - arrowSize, // Left point of the arrowhead
    endX2 + arrowSize, endY2 - arrowSize // Right point of the arrowhead
    );

  // Rewind Symbol Circle
  stroke(0);
  strokeWeight(5);
  float RewindCenterX = RewindDivX + ( RewindDivWidth / 2 ); // X-coordinate of the center
  float RewindCenterY = RewindDivY + ( RewindDivHeight / 2 ); // Y-coordinate of the center
  float RewindRadius = 25 ;
  arc(RewindCenterX, RewindCenterY, RewindRadius * 2, RewindRadius * 2, -PI, 2); // From 0 to PI (half-circle)
  float RewindEndX = RewindCenterX - RewindRadius;
  float RewindEndY = RewindCenterY;
  float RewindArrowSize = RewindRadius * 0.5 ;
  // Rewind Symbol Arrow Head
  fill(0);
  triangle(
    RewindEndX, RewindEndY,
    RewindEndX - RewindArrowSize / 2, RewindEndY - RewindArrowSize,
    RewindEndX + RewindArrowSize / 2, RewindEndY - RewindArrowSize
    );

  //Previous Symbol Left Arrow
  stroke(0);
  strokeWeight(2);
  fill(0);
  triangle(
    PreviousCenterX - (PreviousArrowWidth / 2), PreviousCenterY,
    PreviousCenterX, PreviousCenterY - ( PreviousArrowWidth / 2 ),
    PreviousCenterX, PreviousCenterY + ( PreviousArrowWidth / 2 )
    );
  //Previous Symbol Right Arrow
  stroke(0);
  strokeWeight(2);
  fill(0);
  triangle(
    PreviousCenterX, PreviousCenterY,
    PreviousCenterX + (PreviousArrowWidth / 2), PreviousCenterY - ( PreviousArrowWidth / 2 ),
    PreviousCenterX + (PreviousArrowWidth / 2), PreviousCenterY + ( PreviousArrowWidth / 2 )
    );

  //Next Symbol Right Arrow
  stroke(0);
  strokeWeight(2);
  fill(0);
  triangle(
    NextCenterX + (NextArrowWidth / 2), NextCenterY,
    NextCenterX, NextCenterY - ( NextArrowWidth / 2 ),
    NextCenterX, NextCenterY + ( NextArrowWidth / 2 )
    );
  //Next Symbol Left Arrow
  stroke(0);
  strokeWeight(2);
  fill(0);
  triangle(
    NextCenterX, NextCenterY,
    NextCenterX - (NextArrowWidth / 2), NextCenterY - ( NextArrowWidth / 2 ),
    NextCenterX - (NextArrowWidth / 2), NextCenterY + ( NextArrowWidth / 2 )
    );

  //Fast Forward Symbol Arc
  stroke(0);
  strokeWeight(5);
  noFill();
  float FastForwardCenterX = FastForwardDivX + ( FastForwardDivWidth / 2 ); // X-coordinate of the centerfloat FastForwardCenterX = FastForwardDivX + ( FastForwardDivWidth / 2 ); // X-coordinate of the center
  float FastForwardCenterY = FastForwardDivY + ( FastForwardDivHeight / 2 ); // Y-coordinate of the center
  float FastForwardRadius = 25 ;
  arc(FastForwardCenterX, FastForwardCenterY, FastForwardRadius * 2, FastForwardRadius * 2, -5.3, -0.5 ); // From 0 to PI (half-circle)
  float FastForwardEndX = FastForwardCenterX + FastForwardRadius;
  float FastForwardEndY = FastForwardCenterY;
  float FastForwardArrowSize = FastForwardRadius * 0.5 ;
  //Fast Forward Symbol Arrow Head
  fill(0);
  triangle(
    FastForwardEndX, FastForwardEndY,
    FastForwardEndX - FastForwardArrowSize / 2, FastForwardEndY - FastForwardArrowSize,
    FastForwardEndX + FastForwardArrowSize / 2, FastForwardEndY - FastForwardArrowSize
    );

  //Shuffle Symbol
  stroke(0);
  strokeWeight(5); // Match the weight style of other icons
  noFill();
  float ShuffleCenterX = ShuffleDivX + ( ShuffleDivWidth / 2 );
  float ShuffleCenterY = ShuffleDivY + ( ShuffleDivHeight / 2 );
  float hSpace = ShuffleDivWidth * 0.3;  // Half-width of the total icon span
  float vSpace = ShuffleDivHeight * 0.2; // Vertical distance from center
  float leftX  = ShuffleCenterX - hSpace;
  float rightX = ShuffleCenterX + hSpace;
  float topY   = ShuffleCenterY - vSpace;
  float botY   = ShuffleCenterY + vSpace;
  // 1. Top-Left to Bottom-Right Arrow (Backslash path)
  bezier(leftX, topY, ShuffleCenterX - hSpace/2, topY, ShuffleCenterX + hSpace/2, botY, rightX, botY);
  // 2. Bottom-Left to Top-Right Arrow (Forward-slash path)
  bezier(leftX, botY, ShuffleCenterX - hSpace/2, botY, ShuffleCenterX + hSpace/2, topY, rightX, topY);
  // 3. Arrow Heads
  float shuffleArrowSize = ShuffleDivWidth * 0.12;
  fill(0);
  // Top-Right Arrow Head
  pushMatrix();
  translate(rightX, topY);
  rotate(PI * 10); // Angles the arrow tip slightly upward
  triangle(0, 0, -shuffleArrowSize, -shuffleArrowSize/2, -shuffleArrowSize, shuffleArrowSize/2);
  popMatrix();
  // Bottom-Right Arrow Head
  pushMatrix();
  translate(rightX, botY);
  rotate(PI / 10); // Angles the arrow tip slightly downward
  triangle(0, 0, -shuffleArrowSize, -shuffleArrowSize/2, -shuffleArrowSize, shuffleArrowSize/2);
  popMatrix();
  //2D Music Symbol Changes: hoverover, activation. Boolean from mousePressed()
}
//
void mousePressed() {
  //2D Music Symbol Changes: sending Boolean to draw()
}//End mousePressed
//
void keyPressed() {
}//End keyPressed
//
//End MAIN Program
