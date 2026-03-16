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
float RecordBoxDivX = appWidth * 20 / paperWidth;
float RecordBoxDivY = appHeight * 10 / paperHeight;
float RecordBoxDivWidth = appWidth * 80 / paperWidth;
float RecordBoxDivHeight = appHeight * 60 / paperHeight;

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
