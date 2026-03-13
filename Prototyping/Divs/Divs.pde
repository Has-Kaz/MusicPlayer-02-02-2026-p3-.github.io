/*
*/
//
println(displayWidth, displayHeight);
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//Population using unitless ratios (i.e. millimeters to pixels)
int paperWidth = 279; //Best Practice: local variables use to make DIV Variables
int paperHeight = 216; //MrM #'s, students must use their own
float DivX = appWidth * ??? / paperWidth;
float DivY = appHeight * ??? / paperHeight;
float DivWidth = appWidth * ??? / paperWidth;
float DivHeight = appHeight * ??? / paperHeight;
//
//DIVs
//rect( DivX, DivY, DivWidth, DivHeight );
rect( songTitleDivX, songTitleDDivY, songTitleDDivWidth, songTitleDDivHeight );
rect( DivX, DivY, DivWidth, DivHeight ); //Copy and Paste, rename variables
rect( DivX, DivY, DivWidth, DivHeight );
rect( DivX, DivY, DivWidth, DivHeight );
//
