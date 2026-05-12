/*
*/
//
println(displayWidth, displayHeight);
//fullScreen();
size(470, 1000);
int appWidth = width; //displayWidth
int appHeight = height; //displayHeight
//
int paperWidth = 120;
int paperHeight = 280;
//
//Population using unitless ratios (i.e. millimeters to pixels)
float LoopSquareDivX = appWidth * 25 / paperWidth;
float LoopSquareDivY = appHeight * 85 / paperHeight;
float LoopSquareDivWidth = appWidth * 10 / paperWidth;
float LoopSquareDivHeight = appHeight * 10 / paperHeight;
float LoopDivX = LoopSquareDivX + 4 / LoopSquareDivWidth;
float LoopDivY = LoopSquareDivY + 4 / LoopSquareDivHeight;
float LoopDivWidth = LoopSquareDivWidth - 4 / LoopSquareDivWidth;
float LoopDivHeight = LoopSquareDivX - 4 / LoopSquareDivHeight;

float RewindDivX = appWidth * 35 / paperWidth;
float RewindDivY = appHeight * 85 / paperHeight;
float RewindDivWidth = appWidth * 10 / paperWidth;
float RewindDivHeight = appHeight * 10 / paperHeight;

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
//
//DIVs
//rect( DivX, DivY, DivWidth, DivHeight );
rect( LoopSquareDivX, LoopSquareDivY, LoopSquareDivWidth, LoopSquareDivHeight ); 
rect( RewindDivX, RewindDivY, RewindDivWidth, RewindDivHeight );
rect( PreviousDivX, PreviousDivY, PreviousDivWidth, PreviousDivHeight );
rect( PausePlayDivX, PausePlayDivY, PausePlayDivWidth, PausePlayDivHeight );
rect( NextDivX, NextDivY, NextDivWidth, NextDivHeight );
rect( FastForwardDivX, FastForwardDivY, FastForwardDivWidth, FastForwardDivHeight );
rect( ShuffleDivX, ShuffleDivY, ShuffleDivWidth, ShuffleDivHeight );
rect( LoopDivX, LoopDivY, LoopDivWidth, LoopDivHeight );
//
