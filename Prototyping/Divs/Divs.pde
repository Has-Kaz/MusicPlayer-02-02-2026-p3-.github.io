/*
*/
//
println(displayWidth, displayHeight);
//fullScreen();
size(640, 960);
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

float DivX = appWidth * ??? / paperWidth;
float DivY = appHeight * ??? / paperHeight;
float DivWidth = appWidth * ??? / paperWidth;
float DivHeight = appHeight * ??? / paperHeight;

/*
float DivX = appWidth * ??? / paperWidth;
float DivY = appHeight * ??? / paperHeight;
float DivWidth = appWidth * ??? / paperWidth;
float DivHeight = appHeight * ??? / paperHeight;
*/

//
//DIVs
rect( RecordBoxDivX, RecordBoxDivY, RecordBoxDivWidth, RecordBoxDivHeight );
rect( DivX, ModuleOneDivY, ModuleOneDivWidth, ModuleOneDivHeight ); 
//rect( DivX, DivY, DivWidth, DivHeight );
//rect( DivX, DivY, DivWidth, DivHeight );
//
