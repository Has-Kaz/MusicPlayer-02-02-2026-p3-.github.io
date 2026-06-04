//
//Minim Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
Minim minim;  //initates entire class
int numberOfSongs = 6; //Best Practcie
int numberOfSoundEffect = 1;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioMetaData[] playListMetaData = new AudioMetaData[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffect ];
PImage[] playListImages = new PImage[ numberOfSongs ];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
float songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight;
color redInk, resetInk, blackInk, whiteInk;
float constantDecrease;
int iWhile;
float fontSize1, fontSize2;
PFont font;
//
float PictureBoxDivX ;
float PictureBoxDivY ;
float PictureBoxDivWidth ;
float PictureBoxDivHeight ;
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
  minim = new Minim(this);
  println(displayWidth, displayHeight);
  appWidth = DesignWidth;
  appHeight = DesignHeight;
  int paperWidth = 120;
  int paperHeight = 280;

  PictureBoxDivX = appWidth * -10 / paperWidth;
  PictureBoxDivY = appHeight * 35 / paperHeight;
  PictureBoxDivWidth = appWidth * 140 / paperWidth;
  PictureBoxDivHeight = appHeight * 60 / paperHeight;

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
  //
  String upArrow = "..";
  String Open = "/";
  String musicFolder = "Music";
  String imagesFolder = "Images";
  String soundEffectsFolder = "Sound Effects";
  String dependanciesFolder = "Dependencies";
  //
  String[] songName = new String[numberOfSongs];
  songName[0] = "Cycles";
  songName[1] = "Eureka";
  songName[2] = "Ghost_Walk";
  songName[3] = "Beat_Your_Competition";
  songName[4] = "Newsroom";
  songName[5] = "Start_Your_Engines";
  currentSong = 0;
  //
  String soundEffect1 = "Car_Door_Closing";
  String fileExtension_mp3 = ".mp3";
  //
  String musicDirectory = upArrow + Open + dependanciesFolder + Open + musicFolder + Open;
  String imageDirectory = upArrow + Open + dependanciesFolder + Open + imagesFolder + Open;
  String soundEffectsDirectory = upArrow + Open + dependanciesFolder + Open + soundEffectsFolder + Open;
  String pathway;
  String imagePathway;
  String fileExtension_jpg = ".jpg";
  //
  for (int i=0; i<numberOfSongs; i++) {
    pathway = musicDirectory + songName[i] + fileExtension_mp3;
    playList[i] = minim.loadFile(pathway);
    playListMetaData[i] = playList[i].getMetaData();
    imagePathway = imageDirectory + songName[i] + fileExtension_jpg;
    playListImages[i] = loadImage(imagePathway);
    if (playListImages[i] == null) {
      playListImages[i] = createImage(100, 100, RGB);
    }
  }
  //
  pathway = soundEffectsDirectory + soundEffect1 + fileExtension_mp3;
  soundEffects[0] = minim.loadFile(pathway);
  //
  for (int i=0; i<numberOfSongs; i++) {
    if (playList[i] == null) {
      println("The Play List did not load properly");
      exit();
    }
  }
  //
  playList[currentSong].play();
  //
  fontSize1 = TitleDivHeight / 1.5;
  fontSize2 = SongeTitleOneDivHeight / 2;
  //
  String MyanmarText = "MyanmarText";
  font = createFont(MyanmarText, fontSize1);
  blackInk = #000000;
  redInk = #FF1111;
  whiteInk = #FFFFFF;
  resetInk = whiteInk;
  //
  textAlign(LEFT, CENTER);
  textFont(font, fontSize1);
  //
  float constantDecreaseLocal = 0.99;
  int iWhileLocal = 0;
  //
  while (textWidth(playListMetaData[currentSong].title()) > TitleDivWidth) {
    iWhileLocal++;
    if (iWhileLocal > 10000) {
      println("Infinite WHILE Loop Prevented");
      exit();
    }
    fontSize1 *= constantDecreaseLocal;
    textFont(font, fontSize1);
  }
}//END SETUP
//
void draw() {
  background(#D3AF37);
  scaleFactor = min(float(width) / appWidth, float(height) / appHeight);
  pushMatrix();
  translate((width - appWidth * scaleFactor) / 2, (height - appHeight * scaleFactor) / 2);
  scale(scaleFactor);
  drawInterface();
  popMatrix();
}

void drawInterface() {
  //
  stroke(0);
  strokeWeight(2);
  fill(255);
  rect( TitleDivX, TitleDivY, TitleDivWidth, TitleDivHeight );
  textAlign(CENTER, CENTER);
  textFont(font, fontSize1);
  fill(redInk);
  text( playListMetaData[currentSong].title(), TitleDivX, TitleDivY, TitleDivWidth, TitleDivHeight );
  fill(resetInk);
  //
  stroke(0);
  strokeWeight(2);
  fill(255);
  rect( PictureBoxDivX, PictureBoxDivY, PictureBoxDivWidth, PictureBoxDivHeight );
  PImage img = playListImages[currentSong];
  if (img != null && img.width > 0 && img.height > 0) {
    float imgRatio = (float) img.width / img.height;
    float divRatio = PictureBoxDivWidth / PictureBoxDivHeight;
    float renderWidth, renderHeight;
    if (imgRatio > divRatio) {
      renderWidth = PictureBoxDivWidth;
      renderHeight = PictureBoxDivWidth / imgRatio;
    } else {
      renderHeight = PictureBoxDivHeight;
      renderWidth = PictureBoxDivHeight * imgRatio;
    }
    float imgX = PictureBoxDivX + (PictureBoxDivWidth - renderWidth) / 2;
    float imgY = PictureBoxDivY + (PictureBoxDivHeight - renderHeight) / 2;
    image(img, imgX, imgY, renderWidth, renderHeight);
  }
  //
  for (int row = 1; row <= 5; row++) {
    int nextSongIdx = (currentSong + row) % numberOfSongs;
    float picX, picY, picW, picH;
    float titleX, titleY, titleW, titleH;
    if (row == 1) {
      picX = SongPicOneDivX;
      picY = SongPicOneDivY;
      picW = SongPicOneDivWidth;
      picH = SongPicOneDivHeight;
      titleX = SongeTitleOneDivX;
      titleY = SongeTitleOneDivY;
      titleW = SongeTitleOneDivWidth;
      titleH = SongeTitleOneDivHeight;
    } else if (row == 2) {
      picX = SongPicTwoDivX;
      picY = SongPicTwoDivY;
      picW = SongPicTwoDivWidth;
      picH = SongPicTwoDivHeight;
      titleX = SongeTitleTwoDivX;
      titleY = SongeTitleTwoDivY;
      titleW = SongeTitleTwoDivWidth;
      titleH = SongeTitleTwoDivHeight;
    } else if (row == 3) {
      picX = SongPicThreeDivX;
      picY = SongPicThreeDivY;
      picW = SongPicThreeDivWidth;
      picH = SongPicThreeDivHeight;
      titleX = SongeTitleThreeDivX;
      titleY = SongeTitleThreeDivY;
      titleW = SongeTitleThreeDivWidth;
      titleH = SongeTitleThreeDivHeight;
    } else if (row == 4) {
      picX = SongPicFourDivX;
      picY = SongPicFourDivY;
      picW = SongPicFourDivWidth;
      picH = SongPicFourDivHeight;
      titleX = SongeTitleFourDivX;
      titleY = SongeTitleFourDivY;
      titleW = SongeTitleFourDivWidth;
      titleH = SongeTitleFourDivHeight;
    } else { 
      picX = SongPicFiveDivX;
      picY = SongPicFiveDivY;
      picW = SongPicFiveDivWidth;
      picH = SongPicFiveDivHeight;
      titleX = SongeTitleFiveDivX;
      titleY = SongeTitleFiveDivY;
      titleW = SongeTitleFiveDivWidth;
      titleH = SongeTitleFiveDivHeight;
    }
    stroke(0);
    strokeWeight(2);
    fill(255);
    rect(titleX, titleY, titleW, titleH);
    textAlign(LEFT, CENTER);
    textFont(font, fontSize2);
    fill(blackInk);
    text(playListMetaData[nextSongIdx].title(), titleX + 5, titleY, titleW - 5, titleH);
    fill(resetInk);
    //
    stroke(0);
    strokeWeight(2);
    fill(255);
    rect(picX, picY, picW, picH);
    PImage rowImg = playListImages[nextSongIdx];
    if (rowImg != null && rowImg.width > 0 && rowImg.height > 0) {
      float imgRatio = (float) rowImg.width / rowImg.height;
      float divRatio = picW / picH;
      float renderWidth, renderHeight;
      if (imgRatio > divRatio) {
        renderWidth = picW;
        renderHeight = picW / imgRatio;
      } else {
        renderHeight = picH;
        renderWidth = picH * imgRatio;
      }
      float imgX = picX + (picW - renderWidth) / 2;
      float imgY = picY + (picH - renderHeight) / 2;
      image(rowImg, imgX, imgY, renderWidth, renderHeight);
    }
  }
  //
  stroke(0);
  strokeWeight(2);
  fill(255);
  rect( LoopDivX, LoopDivY, LoopDivWidth, LoopDivHeight );
  rect( RewindDivX, RewindDivY, RewindDivWidth, RewindDivHeight );
  rect( PreviousDivX, PreviousDivY, PreviousDivWidth, PreviousDivHeight );
  rect( PausePlayDivX, PausePlayDivY, PausePlayDivWidth, PausePlayDivHeight );
  rect( NextDivX, NextDivY, NextDivWidth, NextDivHeight );
  rect( FastForwardDivX, FastForwardDivY, FastForwardDivWidth, FastForwardDivHeight );
  rect( ShuffleDivX, ShuffleDivY, ShuffleDivWidth, ShuffleDivHeight );
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

  //PLAY-PAUSE SYMBOL
  //
  //Play Symbol
  stroke(0);
  strokeWeight(2);
  fill(0);
  if ( playList[currentSong].isPlaying() ) {
    // Show PAUSE icon (two vertical bars) while music outputs sound
    float PauseRectOneDivX = PausePlayDivX + ( PausePlayDivWidth / 5 );
    float PauseRectOneDivY = PausePlayDivY + ( PausePlayDivHeight / 5 );
    float PauseRectOneDivWidth =  PausePlayDivWidth / 5 ;
    float PauseRectOneDivHeight = PausePlayDivHeight * 0.6 ;
    rect(PauseRectOneDivX, PauseRectOneDivY, PauseRectOneDivWidth, PauseRectOneDivHeight);

    float PauseRectTwoDivX = PausePlayDivX + ( PausePlayDivWidth * 0.6 );
    float PauseRectTwoDivY = PausePlayDivY + ( PausePlayDivHeight / 5 );
    float PauseRectTwoDivWidth =  PausePlayDivWidth / 5 ;
    float PauseRectTwoDivHeight = PausePlayDivHeight * 0.6 ;
    rect(PauseRectTwoDivX, PauseRectTwoDivY, PauseRectTwoDivWidth, PauseRectTwoDivHeight );
  } else {
    // Show PLAY icon (sideways triangle) when audio is suspended or stopped
    float PlayPointOneDivX = PausePlayDivX + ( PausePlayDivWidth / 5 );
    float PlayPointOneDivY = PausePlayDivY + ( PausePlayDivHeight / 5 );
    float PlayPointTwoDivX = PausePlayDivX + ( PausePlayDivWidth / 5 );
    float PlayPointTwoDivY = PausePlayDivY + ( PausePlayDivHeight * 0.8 );
    float PlayPointThreeDivX = PausePlayDivX + ( PausePlayDivWidth * 0.8 );
    float PlayPointThreeDivY = PausePlayDivY + ( PausePlayDivHeight / 2 );
    triangle( PlayPointOneDivX, PlayPointOneDivY, PlayPointTwoDivX, PlayPointTwoDivY, PlayPointThreeDivX, PlayPointThreeDivY );
  }

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
  //
  if ( key=='O' || key=='o' ) { // Pause
    //
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].play();
    }
  }
  if ( key=='E' | key=='e' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].rewind();
    }
  }
  if ( key=='L' || key=='l' ) playList[currentSong].loop(1); // Loop once
  if ( key=='K' || key=='k' ) playList[currentSong].loop(); // Loop Infinitely
  if ( key=='F' || key=='f' ) playList[currentSong].skip( 10000 ); // Fast Forward, Rewind, & Play Again //Parameter: milliseconds
  if ( key=='R' || key=='r' ) playList[currentSong].skip( -10000 ); // Fast Reverse & Play //Parameter: negative numbers
  if ( key=='M' || key=='m' ) { // MUTE
    //
    if ( playList[currentSong].isMuted() ) {
      playList[currentSong].unmute();
    } else {
      playList[currentSong].mute();
    }
  }
  if ( key==CODED || keyCode==ESC ) exit();
  if ( key=='Q' || key=='q' ) exit();
  if ( key=='N' || key=='n' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playList[currentSong].play();
    } else {
      //
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
    }
  }
  if ( key=='B' || key=='b' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      //
      if ( currentSong==0 ) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--;
      }
      playList[currentSong].play();
    } else {
      //
      playList[currentSong].rewind();
      //
      if ( currentSong==0 ) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--;
      }
    }
  }
  //
  if ( key=='S' || key=='s' ) currentSong = int(random(numberOfSongs));
  //
  if (key == 'P' || key == 'p') {
    if (playList[currentSong].isPlaying()) {
      playList[currentSong].pause();
    } else if (playList[currentSong].position() == 0) {
      playList[currentSong].play();
    } else {
      playList[currentSong].rewind();
    }
  }
}//End keyPressed
//
//End MAIN Program
