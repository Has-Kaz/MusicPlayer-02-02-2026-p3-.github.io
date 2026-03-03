/*DIV's 20 Rectangles
*/
//
println(displayWidth, displayHeight);
fullscreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
int paperWidth = 120;
int paperHeight = 280;
float DivX = appWidth * ??? / paperWidth;
float DivY = appHeight * ??? / paperHeight;
float DivWidth = appWidth * ??? / paperWidth;
float DivHeight = appHeight * ??? / paperHeight;
//
//DIVs
//rect( DivX, DivY, DivWidth, DivHeight );
rect( RecordPlayerDivX, RecordPlayerDivY, RecordPlayerDivWidth, RecordPlayerDivHeight );
rect( 110, 0, 10, 20 );
rect( 20, 10, 80, 60 );
rect( 22, 18, 10, 10 );
rect( 22, 30, 10, 10 );
rect( 22, 42, 10, 10 );
rect( 22, 54, 10, 10 );
rect( 34, 30, 10, 10 );
rect( 34, 45, 10, 5 );
rect( 50, 20, 40, 40 );
rect( 60, 30, 20, 20 );
rect( 35, 80, DivWidth, DivHeight );
rect( DivX, DivY, DivWidth, DivHeight );
