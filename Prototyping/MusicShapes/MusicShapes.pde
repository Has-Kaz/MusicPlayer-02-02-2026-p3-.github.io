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
float LoopDivX = appWidth * 25 / paperWidth;
float LoopDivY = appHeight * 85 / paperHeight;
float LoopDivWidth = appWidth * 10 / paperWidth;
float LoopDivHeight = appHeight * 10 / paperHeight;

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
rect( LoopDivX, LoopDivY, LoopDivWidth, LoopDivHeight ); 
rect( RewindDivX, RewindDivY, RewindDivWidth, RewindDivHeight );
rect( PreviousDivX, PreviousDivY, PreviousDivWidth, PreviousDivHeight );
rect( PausePlayDivX, PausePlayDivY, PausePlayDivWidth, PausePlayDivHeight );
rect( NextDivX, NextDivY, NextDivWidth, NextDivHeight );
rect( FastForwardDivX, FastForwardDivY, FastForwardDivWidth, FastForwardDivHeight );
rect( ShuffleDivX, ShuffleDivY, ShuffleDivWidth, ShuffleDivHeight );
//
