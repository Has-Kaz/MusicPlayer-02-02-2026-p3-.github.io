/* 
 */
//
//
fullScreen();
int appWidth = displayWidth;
int appHeight = displayHeight;
//
//
int numberOfButtons = 7;
int widthOfButton = appWidth/numberOfButtons;
int beginningButtonSpace = widthOfButton;
float quitX = appWidth - appHeight*1/20;
float quitY = 0;
float quitWidth = appHeight*1/20;
float quitHeight = appHeight*1/20;
float songTitleDivX = beginningButtonSpace;
float songTitleDivY = appHeight*1.5/20;
float songTitleDivWidth = appWidth*1/2 - beginningButtonSpace*1.5;
float songTitleDivHeight = appHeight*1/10;
float messageDIV_X = appWidth*1/2 + beginningButtonSpace*1/2;
float messageDIV_Y = appHeight*1.5/20;
float messageDIV_Width = appWidth*1/2 - beginningButtonSpace*1.5;
float messageDIV_Height = appHeight*9/20;
//
//DIV: Image
rect(quitX, quitY, quitWidth, quitHeight);
rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
rect(messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height);
//
//
String title = "Wahoo!";
float fontSize1 = appHeight; 
float fontSize2 = appHeight; 
float fontSize3 = appHeight; 
//println( fontSize );
PFont font; 
String harrington = "Harrington";
font = createFont(harrington, fontSize1);
//
float fontSizeHarrington = 83;
float divHeightHarrington = songTitleDivHeight;
float harringtonAspectRatio = fontSizeHarrington / divHeightHarrington;
float textAdjustment = 0.9;
fontSize1 = songTitleDivHeight*harringtonAspectRatio * textAdjustment;
fontSize2 = messageDIV_Height*harringtonAspectRatio * textAdjustment;
fontSize3 = quitHeight*harringtonAspectRatio * textAdjustment;
//println( fontSize );
//
color purpleInk = #2C08FF;
color whiteInk = #FFFFFF;
color resetInk = whiteInk;
fill(purpleInk); 
textAlign (CENTER, CENTER); 
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
//
float constantDecrease = 0.99;
int iWhile=0;
textFont(font, fontSize1);
while (textWidth(title) > songTitleDivWidth) {
  //println("While #1);
  iWhile++;
  if ( iWhile>1000 ) {
    println("Infninte WHILE Loop");
    exit();
  }
  fontSize1 *= constantDecrease;
  textFont(font, fontSize1);
}
text( title, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
textFont(font, fontSize2); 
iWhile=0;
while (textWidth(title) > messageDIV_Width) {
  //println("While #1"); 
  iWhile++;
  if ( iWhile>1000 ) {
    println("Infninte WHILE Loop");
    exit();
  }
  fontSize2 *= constantDecrease;
  textFont(font, fontSize2);
}
text( title, messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height );
textFont(font, fontSize3); 
iWhile=0;
while (textWidth(title) > quitWidth) {
  //println("While #1"); 
  iWhile++;
  if ( iWhile>1000 ) {
    println("Infninte WHILE Loop");
    exit();
  }
  fontSize3 *= constantDecrease;
  textFont(font, fontSize3);
}
text( title, quitX, quitY, quitWidth, quitHeight );
fill(resetInk);
//
