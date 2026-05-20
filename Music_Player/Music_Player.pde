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

float LoopDivX ;
float LoopDivY ;
float LoopDivWidth ;
float LoopDivHeight ;
float RewindDivX ;
float RewindDivY ;
float RewindDivWidth ;
float RewindDivHeight ;

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
  float RecordBoxDivX = appWidth * 20 / paperWidth;
  float RecordBoxDivY = appHeight * 10 / paperHeight;
  float RecordBoxDivWidth = appWidth * 80 / paperWidth;
  float RecordBoxDivHeight = appHeight * 60 / paperHeight;

  LoopDivX = appWidth * 25 / paperWidth;
  LoopDivY = appHeight * 85 / paperHeight;
  LoopDivWidth = appWidth * 10 / paperWidth;
  LoopDivHeight = appHeight * 10 / paperHeight;

  RewindDivX = appWidth * 35 / paperWidth;
  RewindDivY = appHeight * 85 / paperHeight;
  RewindDivWidth = appWidth * 10 / paperWidth;
  RewindDivHeight = appHeight * 10 / paperHeight;

  float PreviousDivX = appWidth * 45 / paperWidth;
  float PreviousDivY = appHeight * 85 / paperHeight;
  float PreviousDivWidth = appWidth * 10 / paperWidth;
  float PreviousDivHeight = appHeight * 10 / paperHeight;

  float PausePlayDivX = appWidth * 55 / paperWidth;
  float PausePlayDivY = appHeight * 85 / paperHeight;
  float PausePlayDivWidth = appWidth * 10 / paperWidth;
  float PausePlayDivHeight = appHeight * 10 / paperHeight;

  float NextDivX = appWidth * 65 / paperWidth;
  float NextDivY = appHeight * 85 / paperHeight;
  float NextDivWidth = appWidth * 10 / paperWidth;
  float NextDivHeight = appHeight * 10 / paperHeight;

  float FastForwardDivX = appWidth * 75 / paperWidth;
  float FastForwardDivY = appHeight * 85 / paperHeight;
  float FastForwardDivWidth = appWidth * 10 / paperWidth;
  float FastForwardDivHeight = appHeight * 10 / paperHeight;

  float ShuffleDivX = appWidth * 85 / paperWidth;
  float ShuffleDivY = appHeight * 85 / paperHeight;
  float ShuffleDivWidth = appWidth * 10 / paperWidth;
  float ShuffleDivHeight = appHeight * 10 / paperHeight;

  float SongPicOneDivX = appWidth * 10 / paperWidth;
  float SongPicOneDivY = appHeight * 110 / paperHeight;
  float SongPicOneDivWidth = appWidth * 20 / paperWidth;
  float SongPicOneDivHeight = appHeight * 20 / paperHeight;

  float SongeTitleOneDivX = appWidth * 30 / paperWidth;
  float SongeTitleOneDivY = appHeight * 110 / paperHeight;
  float SongeTitleOneDivWidth = appWidth * 80 / paperWidth;
  float SongeTitleOneDivHeight = appHeight * 20 / paperHeight;

  float SongPicTwoDivX = appWidth * 10 / paperWidth;
  float SongPicTwoDivY = appHeight * 140 / paperHeight;
  float SongPicTwoDivWidth = appWidth * 20 / paperWidth;
  float SongPicTwoDivHeight = appHeight * 20 / paperHeight;

  float SongeTitleTwoDivX = appWidth * 30 / paperWidth;
  float SongeTitleTwoDivY = appHeight * 140 / paperHeight;
  float SongeTitleTwoDivWidth = appWidth * 80 / paperWidth;
  float SongeTitleTwoDivHeight = appHeight * 20 / paperHeight;

  float SongPicThreeDivX = appWidth * 10 / paperWidth;
  float SongPicThreeDivY = appHeight * 170 / paperHeight;
  float SongPicThreeDivWidth = appWidth * 20 / paperWidth;
  float SongPicThreeDivHeight = appHeight * 20 / paperHeight;

  float SongeTitleThreeDivX = appWidth * 30 / paperWidth;
  float SongeTitleThreeDivY = appHeight * 170 / paperHeight;
  float SongeTitleThreeDivWidth = appWidth * 80 / paperWidth;
  float SongeTitleThreeDivHeight = appHeight * 20 / paperHeight;

  float SongPicFourDivX = appWidth * 10 / paperWidth;
  float SongPicFourDivY = appHeight * 200 / paperHeight;
  float SongPicFourDivWidth = appWidth * 20 / paperWidth;
  float SongPicFourDivHeight = appHeight * 20 / paperHeight;

  float SongeTitleFourDivX = appWidth * 30 / paperWidth;
  float SongeTitleFourDivY = appHeight * 200 / paperHeight;
  float SongeTitleFourDivWidth = appWidth * 80 / paperWidth;
  float SongeTitleFourDivHeight = appHeight * 20 / paperHeight;

  float SongPicFiveDivX = appWidth * 10 / paperWidth;
  float SongPicFiveDivY = appHeight * 230 / paperHeight;
  float SongPicFiveDivWidth = appWidth * 20 / paperWidth;
  float SongPicFiveDivHeight = appHeight * 20 / paperHeight;

  float SongeTitleFiveDivX = appWidth * 30 / paperWidth;
  float SongeTitleFiveDivY = appHeight * 230 / paperHeight;
  float SongeTitleFiveDivWidth = appWidth * 80 / paperWidth;
  float SongeTitleFiveDivHeight = appHeight * 20 / paperHeight;

  float HomeDivX = appWidth * 0 / paperWidth;
  float HomeDivY = appHeight * 260 / paperHeight;
  float HomeDivWidth = appWidth * 60 / paperWidth;
  float HomeDivHeight = appHeight * 20 / paperHeight;

  float PlaylistDivX = appWidth * 60 / paperWidth;
  float PlaylistDivY = appHeight * 260 / paperHeight;
  float PlaylistDivWidth = appWidth * 60 / paperWidth;
  float PlaylistDivHeight = appHeight * 20 / paperHeight;

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
  rect( HomeDivX, HomeDivY, HomeDivWidth, HomeDivHeight );
  rect( PlaylistDivX, PlaylistDivY, PlaylistDivWidth, PlaylistDivHeight );
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
  stroke(0);
  strokeWeight(2);
  noFill();
  float Loop1CenterX = LoopDivX + ( LoopDivWidth / 2 ); // X-coordinate of the center
  float Loop1CenterY = LoopDivY + ( LoopDivHeight / 2 ); // Y-coordinate of the center
  float Loop1Radius = 8 ; // Radius of the semi-circle
  arc(Loop1CenterX, Loop1CenterY, Loop1Radius * 2, Loop1Radius * 2, 0.2, PI); // From 0 to PI (half-circle)
  float Loop1EndX = Loop1CenterX - Loop1Radius; // X-coordinate of the end point (cos(PI) * radius)
  float Loop1EndY = Loop1CenterY;          // Y-coordinate of the end point (sin(PI) * radius = 0)
  // Draw the arrowhead (triangle) at the end of the semi-circle
  float Loop1ArrowSize = Loop1Radius * 0.5 ; // Size of the arrowhead
  fill(0); // Black fill for the arrowhead
  triangle(
    Loop1EndX, Loop1EndY, // Base of the arrowhead (end of the semi-circle)
    Loop1EndX - Loop1ArrowSize, Loop1EndY - Loop1ArrowSize / 5, // Left point of the arrowhead
    Loop1EndX - Loop1ArrowSize, Loop1EndY + Loop1ArrowSize // Right point of the arrowhead
    );
  stroke(0);
  strokeWeight(2);
  noFill();
  float Loop2CenterX = LoopDivX + ( LoopDivWidth / 2 ); // X-coordinate of the center
  float Loop2CenterY = LoopDivY + ( LoopDivHeight / 2 ); // Y-coordinate of the center
  float Loop2Radius = 8 ; // Radius of the semi-circle
  arc(Loop2CenterX, Loop2CenterY, Loop2Radius * 2, Loop2Radius * 2, -2.5, PI); // From 0 to PI (half-circle)
  float Loop2EndX = Loop2CenterX + Loop2Radius; // X-coordinate of the end point (cos(PI) * radius)
  float Loop2EndY = Loop2CenterY;          // Y-coordinate of the end point (sin(PI) * radius = 0)
  // Draw the arrowhead (triangle) at the end of the semi-circle
  float Loop2ArrowSize = Loop2Radius * 0.5 ; // Size of the arrowhead
  fill(0); // Black fill for the arrowhead
  triangle(
    Loop2EndX, Loop2EndY, // Base of the arrowhead (end of the semi-circle)
    Loop2EndX - Loop2ArrowSize, Loop2EndY - Loop2ArrowSize / 5, // Left point of the arrowhead
    Loop2EndX - Loop2ArrowSize, Loop2EndY + Loop2ArrowSize // Right point of the arrowhead
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
