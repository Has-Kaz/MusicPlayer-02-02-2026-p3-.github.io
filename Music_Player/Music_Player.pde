/* Music App, Final Project
 */
//
//Minim Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
/*Global Variables
 - Possible DIV-vars needed in draw(), etc.
 - MUST: Music Button-vars, possibliy associated DIV-vars
 */
//
float RecordBoxDivX ;
float RecordBoxDivY ;
float RecordBoxDivWidth ;
float RecordBoxDivHeight ;
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
float PausePlayDivX ;
float PausePlayDivY ;
float PausePlayDivWidth ;
float PausePlayDivHeight ;
float NextDivX ;
float NextDivY ;
float NextDivWidth ;
float NextDivHeight ;
float FastForwardDivX ;
float FastForwardDivY ;
float FastForwardDivWidth ;
float FastForwardDivHeight ;
float ShuffleDivX ;
float ShuffleDivY ;
float ShuffleDivWidth ;
float ShuffleDivHeight ;
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

void setup() {
  /*
*/
  //
  println(displayWidth, displayHeight);
  //fullScreen();
  size(470, 1000);
  int appWidth = width; //displayWidth
  int appHeight = height; //displayHeight
  //
  //
  int paperWidth = 120;
  int paperHeight = 280;
  //
  RecordBoxDivX = appWidth * 20 / paperWidth;
  RecordBoxDivY = appHeight * 10 / paperHeight;
  RecordBoxDivWidth = appWidth * 80 / paperWidth;
  RecordBoxDivHeight = appHeight * 60 / paperHeight;

  LoopDivX = appWidth * 25 / paperWidth;
  LoopDivY = appHeight * 85 / paperHeight;
  LoopDivWidth = appWidth * 10 / paperWidth;
  LoopDivHeight = appHeight * 10 / paperHeight;

  RewindDivX = appWidth * 35 / paperWidth;
  RewindDivY = appHeight * 85 / paperHeight;
  RewindDivWidth = appWidth * 10 / paperWidth;
  RewindDivHeight = appHeight * 10 / paperHeight;

  PreviousDivX = appWidth * 45 / paperWidth;
  PreviousDivY = appHeight * 85 / paperHeight;
  PreviousDivWidth = appWidth * 10 / paperWidth;
  PreviousDivHeight = appHeight * 10 / paperHeight;

  PausePlayDivX = appWidth * 55 / paperWidth;
  PausePlayDivY = appHeight * 85 / paperHeight;
  PausePlayDivWidth = appWidth * 10 / paperWidth;
  PausePlayDivHeight = appHeight * 10 / paperHeight;

  NextDivX = appWidth * 65 / paperWidth;
  NextDivY = appHeight * 85 / paperHeight;
  NextDivWidth = appWidth * 10 / paperWidth;
  NextDivHeight = appHeight * 10 / paperHeight;

  FastForwardDivX = appWidth * 75 / paperWidth;
  FastForwardDivY = appHeight * 85 / paperHeight;
  FastForwardDivWidth = appWidth * 10 / paperWidth;
  FastForwardDivHeight = appHeight * 10 / paperHeight;

  ShuffleDivX = appWidth * 85 / paperWidth;
  ShuffleDivY = appHeight * 85 / paperHeight;
  ShuffleDivWidth = appWidth * 10 / paperWidth;
  ShuffleDivHeight = appHeight * 10 / paperHeight;

  SongPicOneDivX = appWidth * 10 / paperWidth;
  SongPicOneDivY = appHeight * 110 / paperHeight;
  SongPicOneDivWidth = appWidth * 20 / paperWidth;
  SongPicOneDivHeight = appHeight * 20 / paperHeight;

  SongeTitleOneDivX = appWidth * 30 / paperWidth;
  SongeTitleOneDivY = appHeight * 110 / paperHeight;
  SongeTitleOneDivWidth = appWidth * 80 / paperWidth;
  SongeTitleOneDivHeight = appHeight * 20 / paperHeight;

  SongPicTwoDivX = appWidth * 10 / paperWidth;
  SongPicTwoDivY = appHeight * 140 / paperHeight;
  SongPicTwoDivWidth = appWidth * 20 / paperWidth;
  SongPicTwoDivHeight = appHeight * 20 / paperHeight;

  SongeTitleTwoDivX = appWidth * 30 / paperWidth;
  SongeTitleTwoDivY = appHeight * 140 / paperHeight;
  SongeTitleTwoDivWidth = appWidth * 80 / paperWidth;
  SongeTitleTwoDivHeight = appHeight * 20 / paperHeight;

  SongPicThreeDivX = appWidth * 10 / paperWidth;
  SongPicThreeDivY = appHeight * 170 / paperHeight;
  SongPicThreeDivWidth = appWidth * 20 / paperWidth;
  SongPicThreeDivHeight = appHeight * 20 / paperHeight;

  SongeTitleThreeDivX = appWidth * 30 / paperWidth;
  SongeTitleThreeDivY = appHeight * 170 / paperHeight;
  SongeTitleThreeDivWidth = appWidth * 80 / paperWidth;
  SongeTitleThreeDivHeight = appHeight * 20 / paperHeight;

  SongPicFourDivX = appWidth * 10 / paperWidth;
  SongPicFourDivY = appHeight * 200 / paperHeight;
  SongPicFourDivWidth = appWidth * 20 / paperWidth;
  SongPicFourDivHeight = appHeight * 20 / paperHeight;

  SongeTitleFourDivX = appWidth * 30 / paperWidth;
  SongeTitleFourDivY = appHeight * 200 / paperHeight;
  SongeTitleFourDivWidth = appWidth * 80 / paperWidth;
  SongeTitleFourDivHeight = appHeight * 20 / paperHeight;

  SongPicFiveDivX = appWidth * 10 / paperWidth;
  SongPicFiveDivY = appHeight * 230 / paperHeight;
  SongPicFiveDivWidth = appWidth * 20 / paperWidth;
  SongPicFiveDivHeight = appHeight * 20 / paperHeight;

  SongeTitleFiveDivX = appWidth * 30 / paperWidth;
  SongeTitleFiveDivY = appHeight * 230 / paperHeight;
  SongeTitleFiveDivWidth = appWidth * 80 / paperWidth;
  SongeTitleFiveDivHeight = appHeight * 20 / paperHeight;

  /*
float DivX = appWidth * ??? / paperWidth;
   float DivY = appHeight * ??? / paperHeight;
   float DivWidth = appWidth * ??? / paperWidth;
   float DivHeight = appHeight * ??? / paperHeight;
   */

  //
  //DIVs
  rect( RecordBoxDivX, RecordBoxDivY, RecordBoxDivWidth, RecordBoxDivHeight );
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
  //@23D music Symbol Shapes
  //
}//End Setup
//
void draw() {
  stroke(0);
  strokeWeight(2);
  noFill();
  float RewindCenterX = RewindDivX + ( RewindDivWidth / 2 ); // X-coordinate of the center
  float RewindCenterY = RewindDivY + ( RewindDivHeight / 2 ); // Y-coordinate of the center
  float RewindRadius = 8 ;
  arc(RewindCenterX, RewindCenterY, RewindRadius * 2, RewindRadius * 2, -2, PI); // From 0 to PI (half-circle)
  float RewindEndX = RewindCenterX - RewindRadius;
  float RewindEndY = RewindCenterY;
  float RewindArrowSize = RewindRadius * 0.5 ;
  fill(0);
  triangle(
    RewindEndX, RewindEndY,
    RewindEndX - RewindArrowSize, RewindEndY - RewindArrowSize / 5,
    RewindEndX - RewindArrowSize, RewindEndY + RewindArrowSize
    );

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

  stroke(0);
  strokeWeight(2);
  noFill();
  arc( loopCenterX, loopCenterY, radius * 2, radius * 2, 1.5, PI );
  float arrowSize = radius * 0.333333333 ; // Size of the arrowhead
  fill(0); // Black fill for the arrowhead
  triangle(
    endX1, endY1, // Base of the arrowhead (end of the semi-circle)
    endX1 - arrowSize, endY1 - arrowSize / 2, // Left point of the arrowhead
    endX1 - arrowSize, endY1 + arrowSize / 2  // Right point of the arrowhead
    );
  stroke(0);
  strokeWeight(2);
  noFill();
  arc( loopCenterX, loopCenterY, radius * 2, radius * 2, 4.5, 6.5 );
  triangle(
    endX2, endY2, // Base of the arrowhead (end of the semi-circle)
    endX2 + arrowSize, endY2 + arrowSize  , // Left point of the arrowhead
    endX2 - arrowSize, endY2 + arrowSize // Right point of the arrowhead
    );
  //2D Music Symbol Changes: hoverover, activation. Boolean from mousePressed()
}//End Draw
//
void mousePressed() {
  //2D Music Symbol Changes: sending Boolean to draw()
}//End mousePressed
//
void keyPressed() {
}//End keyPressed
//
//End MAIN Program
