//Minim Library
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
Minim minim;
int numberOfSongs = 6;
int numberOfSoundEffect = 1;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioMetaData[] playListMetaData = new AudioMetaData[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffect ];
PImage[] playListImages = new PImage[ numberOfSongs ];
int currentSong = numberOfSongs - numberOfSongs;
//
float songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight;
color redInk, resetInk, blackInk, whiteInk, activeClickColor, leftCircleColor, rightCircleColor;
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
float SongTitleOneDivX ;
float SongTitleOneDivY ;
float SongTitleOneDivWidth ;
float SongTitleOneDivHeight ;
float SongPicTwoDivX ;
float SongPicTwoDivY ;
float SongPicTwoDivWidth ;
float SongPicTwoDivHeight ;
float SongTitleTwoDivX ;
float SongTitleTwoDivY ;
float SongTitleTwoDivWidth ;
float SongTitleTwoDivHeight ;
float SongPicThreeDivX ;
float SongPicThreeDivY ;
float SongPicThreeDivWidth ;
float SongPicThreeDivHeight ;
float SongTitleThreeDivX ;
float SongTitleThreeDivY ;
float SongTitleThreeDivWidth ;
float SongTitleThreeDivHeight ;
float SongPicFourDivX ;
float SongPicFourDivY ;
float SongPicFourDivWidth ;
float SongPicFourDivHeight ;
float SongTitleFourDivX ;
float SongTitleFourDivY ;
float SongTitleFourDivWidth ;
float SongTitleFourDivHeight ;
float SongPicFiveDivX ;
float SongPicFiveDivY ;
float SongPicFiveDivWidth ;
float SongPicFiveDivHeight ;
float SongTitleFiveDivX ;
float SongTitleFiveDivY ;
float SongTitleFiveDivWidth ;
float SongTitleFiveDivHeight ;
float radius ;
float loopCenterX ;
float loopCenterY ;
float rewindCenterX ;
float rewindCenterY ;
float QuitDivX ;
float QuitDivY ;
float QuitDivWidth ;
float QuitDivHeight ;
int appWidth;
int appHeight;
float scaleFactor;
float leftCircleX, leftCircleY, leftCircleRadius;
float rightCircleX, rightCircleY, rightCircleRadius;
float leftCircleOffsetX, leftCircleOffsetY;
float rightCircleOffsetX, rightCircleOffsetY;
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

  SongTitleOneDivX = appWidth * 10 / paperWidth;
  SongTitleOneDivY = appHeight * 130 / paperHeight;
  SongTitleOneDivWidth = appWidth * 120 / paperWidth;
  SongTitleOneDivHeight = appHeight * 20 / paperHeight;

  SongPicTwoDivX = appWidth * -10 / paperWidth;
  SongPicTwoDivY = appHeight * 160 / paperHeight;
  SongPicTwoDivWidth = appWidth * 20 / paperWidth;
  SongPicTwoDivHeight = appHeight * 20 / paperHeight;

  SongTitleTwoDivX = appWidth * 10 / paperWidth;
  SongTitleTwoDivY = appHeight * 160 / paperHeight;
  SongTitleTwoDivWidth = appWidth * 120 / paperWidth;
  SongTitleTwoDivHeight = appHeight * 20 / paperHeight;

  SongPicThreeDivX = appWidth * -10 / paperWidth;
  SongPicThreeDivY = appHeight * 190 / paperHeight;
  SongPicThreeDivWidth = appWidth * 20 / paperWidth;
  SongPicThreeDivHeight = appHeight * 20 / paperHeight;

  SongTitleThreeDivX = appWidth * 10 / paperWidth;
  SongTitleThreeDivY = appHeight * 190 / paperHeight;
  SongTitleThreeDivWidth = appWidth * 120 / paperWidth;
  SongTitleThreeDivHeight = appHeight * 20 / paperHeight;

  SongPicFourDivX = appWidth * -10 / paperWidth;
  SongPicFourDivY = appHeight * 220 / paperHeight;
  SongPicFourDivWidth = appWidth * 20 / paperWidth;
  SongPicFourDivHeight = appHeight * 20 / paperHeight;

  SongTitleFourDivX = appWidth * 10 / paperWidth;
  SongTitleFourDivY = appHeight * 220 / paperHeight;
  SongTitleFourDivWidth = appWidth * 120 / paperWidth;
  SongTitleFourDivHeight = appHeight * 20 / paperHeight;

  SongPicFiveDivX = appWidth * -10 / paperWidth;
  SongPicFiveDivY = appHeight * 250 / paperHeight;
  SongPicFiveDivWidth = appWidth * 20 / paperWidth;
  SongPicFiveDivHeight = appHeight * 20 / paperHeight;

  SongTitleFiveDivX = appWidth * 10 / paperWidth;
  SongTitleFiveDivY = appHeight * 250 / paperHeight;
  SongTitleFiveDivWidth = appWidth * 120 / paperWidth;
  SongTitleFiveDivHeight = appHeight * 20 / paperHeight;
  //
  //
  QuitDivX = appWidth * 135 / paperWidth;
  QuitDivY = appHeight * 10 / paperHeight;
  QuitDivWidth = appWidth * 15 / paperWidth;
  QuitDivHeight = appHeight * 15 / paperHeight;

  leftCircleColor  = color(#780606);
  rightCircleColor = color(#d1001f);
  leftCircleRadius  = 475.0;
  rightCircleRadius = 520.0;
  leftCircleOffsetX  = 0.0;
  leftCircleOffsetY  = 0.0;
  rightCircleOffsetX = 0.0;
  rightCircleOffsetY = 0.0;
  float baseLeftGridX  = -10.0 + leftCircleOffsetX;
  float baseLeftGridY  = 270.0 + leftCircleOffsetY;
  float baseRightGridX = 130.0 + rightCircleOffsetX;
  float baseRightGridY = 270.0 + rightCircleOffsetY;
  leftCircleX = appWidth * baseLeftGridX / paperWidth;
  leftCircleY = appHeight * baseLeftGridY / paperHeight;
  rightCircleX = appWidth * baseRightGridX / paperWidth;
  rightCircleY = appHeight * baseRightGridY / paperHeight;
  //
  //
  activeClickColor = #000000;
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
  fontSize2 = SongTitleOneDivHeight / 2;
  //
  String MyanmarText = "Myanmar Text Bold";
  font = createFont(MyanmarText, fontSize1);
  blackInk = #000000;
  redInk = #FF0000;
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
  background(#454545);
  scaleFactor = min(float(width) / appWidth, float(height) / appHeight);
  pushMatrix();
  translate((width - appWidth * scaleFactor) / 2, (height - appHeight * scaleFactor) / 2);
  scale(scaleFactor);
  drawInterface();
  popMatrix();
  //
  if (!playList[currentSong].isPlaying() && playList[currentSong].position() >= playList[currentSong].length() - 100) {
    playList[currentSong].rewind();
    if (currentSong == numberOfSongs - 1) {
      currentSong = 0;
    } else {
      currentSong++;
    }
    playList[currentSong].play();
  }
}

void drawInterface() {
  //
  float localMouseX = (mouseX - (width - appWidth * scaleFactor) / 2) / scaleFactor;
  float localMouseY = (mouseY - (height - appHeight * scaleFactor) / 2) / scaleFactor;
  //
  //
  stroke(0);
  strokeWeight(0);
  fill(leftCircleColor);
  ellipse(leftCircleX, leftCircleY, leftCircleRadius * 2, leftCircleRadius * 2);
  fill(rightCircleColor);
  ellipse(rightCircleX, rightCircleY, rightCircleRadius * 2, rightCircleRadius * 2);
  //
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
  strokeWeight(0);
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
    //
    if (row == 1) {
      picX = SongPicOneDivX;
      picY = SongPicOneDivY;
      picW = SongPicOneDivWidth;
      picH = SongPicOneDivHeight;
      titleX = SongTitleOneDivX;
      titleY = SongTitleOneDivY;
      titleW = SongTitleOneDivWidth;
      titleH = SongTitleOneDivHeight;
    } else if (row == 2) {
      picX = SongPicTwoDivX;
      picY = SongPicTwoDivY;
      picW = SongPicTwoDivWidth;
      picH = SongPicTwoDivHeight;
      titleX = SongTitleTwoDivX;
      titleY = SongTitleTwoDivY;
      titleW = SongTitleTwoDivWidth;
      titleH = SongTitleTwoDivHeight;
    } else if (row == 3) {
      picX = SongPicThreeDivX;
      picY = SongPicThreeDivY;
      picW = SongPicThreeDivWidth;
      picH = SongPicThreeDivHeight;
      titleX = SongTitleThreeDivX;
      titleY = SongTitleThreeDivY;
      titleW = SongTitleThreeDivWidth;
      titleH = SongTitleThreeDivHeight;
    } else if (row == 4) {
      picX = SongPicFourDivX;
      picY = SongPicFourDivY;
      picW = SongPicFourDivWidth;
      picH = SongPicFourDivHeight;
      titleX = SongTitleFourDivX;
      titleY = SongTitleFourDivY;
      titleW = SongTitleFourDivWidth;
      titleH = SongTitleFourDivHeight;
    } else {
      picX = SongPicFiveDivX;
      picY = SongPicFiveDivY;
      picW = SongPicFiveDivWidth;
      picH = SongPicFiveDivHeight;
      titleX = SongTitleFiveDivX;
      titleY = SongTitleFiveDivY;
      titleW = SongTitleFiveDivWidth;
      titleH = SongTitleFiveDivHeight;
    }
    //
    boolean isHoveringRow = (localMouseX >= picX && localMouseX <= titleX + titleW && localMouseY >= picY && localMouseY <= picY + picH);
    boolean isRowPressed = isHoveringRow && mousePressed;
    if (isRowPressed) {
      fill(activeClickColor);
    } else if (isHoveringRow) {
      fill(200);
    } else {
      fill(255);
    }
    stroke(0);
    strokeWeight(0);
    rect(titleX, titleY, titleW, titleH);
    textAlign(LEFT, CENTER);
    textFont(font, fontSize2);
    if (isRowPressed) {
      fill(whiteInk);
    } else {
      fill(blackInk);
    }
    text(playListMetaData[nextSongIdx].title(), titleX + 5, titleY, titleW - 5, titleH);
    fill(resetInk);
    if (isRowPressed) {
      fill(activeClickColor);
    } else if (isHoveringRow) {
      fill(200);
    } else {
      fill(255);
    }
    stroke(0);
    strokeWeight(0);
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
  if (localMouseX >= LoopDivX && localMouseX <= LoopDivX + LoopDivWidth && localMouseY >= LoopDivY && localMouseY <= LoopDivY + LoopDivHeight) {
    if (mousePressed) {
      fill(activeClickColor);
    } else {
      fill(200);
    }
  } else {
    fill(255);
  }
  rect( LoopDivX, LoopDivY, LoopDivWidth, LoopDivHeight );
  if (localMouseX >= RewindDivX && localMouseX <= RewindDivX + RewindDivWidth && localMouseY >= RewindDivY && localMouseY <= RewindDivY + RewindDivHeight) {
    if (mousePressed) {
      fill(activeClickColor);
    } else {
      fill(200);
    }
  } else {
    fill(255);
  }
  rect( RewindDivX, RewindDivY, RewindDivWidth, RewindDivHeight );
  if (localMouseX >= PreviousDivX && localMouseX <= PreviousDivX + PreviousDivWidth && localMouseY >= PreviousDivY && localMouseY <= PreviousDivY + PreviousDivHeight) {
    if (mousePressed) {
      fill(activeClickColor);
    } else {
      fill(200);
    }
  } else {
    fill(255);
  }
  rect( PreviousDivX, PreviousDivY, PreviousDivWidth, PreviousDivHeight );
  if (localMouseX >= PausePlayDivX && localMouseX <= PausePlayDivX + PausePlayDivWidth && localMouseY >= PausePlayDivY && localMouseY <= PausePlayDivY + PausePlayDivHeight) {
    if (mousePressed) {
      fill(activeClickColor);
    } else {
      fill(200);
    }
  } else {
    fill(255);
  }
  rect( PausePlayDivX, PausePlayDivY, PausePlayDivWidth, PausePlayDivHeight );
  if (localMouseX >= NextDivX && localMouseX <= NextDivX + NextDivWidth && localMouseY >= NextDivY && localMouseY <= NextDivY + NextDivHeight) {
    if (mousePressed) {
      fill(activeClickColor);
    } else {
      fill(200);
    }
  } else {
    fill(255);
  }
  rect( NextDivX, NextDivY, NextDivWidth, NextDivHeight );
  if (localMouseX >= FastForwardDivX && localMouseX <= FastForwardDivX + FastForwardDivWidth && localMouseY >= FastForwardDivY && localMouseY <= FastForwardDivY + FastForwardDivHeight) {
    if (mousePressed) {
      fill(activeClickColor);
    } else {
      fill(200);
    }
  } else {
    fill(255);
  }
  rect( FastForwardDivX, FastForwardDivY, FastForwardDivWidth, FastForwardDivHeight );
  if (localMouseX >= ShuffleDivX && localMouseX <= ShuffleDivX + ShuffleDivWidth && localMouseY >= ShuffleDivY && localMouseY <= ShuffleDivY + ShuffleDivHeight) {
    if (mousePressed) {
      fill(activeClickColor);
    } else {
      fill(200);
    }
  } else {
    fill(255);
  }
  rect( ShuffleDivX, ShuffleDivY, ShuffleDivWidth, ShuffleDivHeight );
  if (localMouseX >= QuitDivX && localMouseX <= QuitDivX + QuitDivWidth && localMouseY >= QuitDivY && localMouseY <= QuitDivY + QuitDivHeight) {
    if (mousePressed) {
      fill(redInk);
    } else {
      fill(200);
    }
  } else {
    fill(255);
  }
  rect( QuitDivX, QuitDivY, QuitDivWidth, QuitDivHeight );
  //
  //Line
  stroke(0);
  strokeWeight(3.5);
  line( LineEndOneX, LineEndOneY, LineEndTwoX, LineEndTwoY );

  //
  //Loop Symbol
  //
  radius = ( LoopDivWidth / 10 ) * 3.2;
  loopCenterX = LoopDivX + ( LoopDivWidth / 2 );
  loopCenterY = LoopDivY + ( LoopDivHeight / 2 );
  float gapAngle = radians(35);
  float arrowSize = radius * 0.4;
  //
  boolean loopPressed = (localMouseX >= LoopDivX && localMouseX <= LoopDivX + LoopDivWidth && localMouseY >= LoopDivY && localMouseY <= LoopDivY + LoopDivHeight) && mousePressed;
  //
  if (loopPressed) {
    stroke(255);
    noFill();
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(5);
    noFill();
  }
  float arc1Start = -HALF_PI + gapAngle;
  float arc1End   = HALF_PI - gapAngle;
  arc(loopCenterX, loopCenterY, radius * 2, radius * 2, arc1Start, arc1End);
  float arc2Start = HALF_PI + gapAngle;
  float arc2End   = TWO_PI - HALF_PI - gapAngle;
  arc(loopCenterX, loopCenterY, radius * 2, radius * 2, arc2Start, arc2End);
  if (loopPressed) {
    stroke(255);
    fill(255);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(5);
    fill(0);
  }
  float arrowTopX = loopCenterX + cos(arc2End) * radius;
  float arrowTopY = loopCenterY + sin(arc2End) * radius;
  pushMatrix();
  translate(arrowTopX, arrowTopY);
  rotate(arc2End + HALF_PI); // Aligns perfectly flush to point right
  triangle(
    0, 0,
    -arrowSize * 1.2, -arrowSize/2,
    -arrowSize * 1.2, arrowSize/2
    );
  popMatrix();
  float arrowBotX = loopCenterX + cos(arc1End) * radius;
  float arrowBotY = loopCenterY + sin(arc1End) * radius;
  pushMatrix();
  translate(arrowBotX, arrowBotY);
  rotate(arc1End + HALF_PI); // Aligns perfectly flush to point left
  triangle(
    0, 0,
    -arrowSize * 1.2, -arrowSize/2,
    -arrowSize * 1.2, arrowSize/2
    );
  popMatrix();

  // Rewind Symbol Circle
  boolean RewindPressed = (localMouseX >= RewindDivX && localMouseX <= RewindDivX + RewindDivWidth && localMouseY >= RewindDivY && localMouseY <= RewindDivY + RewindDivHeight) && mousePressed;
  if (RewindPressed) {
    stroke(255);
    noFill();
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(5);
    noFill();
  }
  float RewindCenterX = RewindDivX + ( RewindDivWidth / 2 );
  float RewindCenterY = RewindDivY + ( RewindDivHeight / 2 );
  float RewindRadius = 25 ;
  arc(RewindCenterX, RewindCenterY, RewindRadius * 2, RewindRadius * 2, -PI, 2);
  float RewindEndX = RewindCenterX - RewindRadius;
  float RewindEndY = RewindCenterY;
  float RewindArrowSize = RewindRadius * 0.5 ;
  // Rewind Symbol Arrow Head
  if (RewindPressed) {
    stroke(255);
    fill(255);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(5);
    fill(0);
  }
  triangle(
    RewindEndX, RewindEndY,
    RewindEndX - RewindArrowSize / 2, RewindEndY - RewindArrowSize,
    RewindEndX + RewindArrowSize / 2, RewindEndY - RewindArrowSize
    );

  //Previous Symbol Left Arrow
  boolean PreviousPressed = (localMouseX >= PreviousDivX && localMouseX <= PreviousDivX + PreviousDivWidth && localMouseY >= PreviousDivY && localMouseY <= PreviousDivY + PreviousDivHeight) && mousePressed;
  if (PreviousPressed) {
    stroke(255);
    fill(255);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(5);
    fill(0);
  }
  triangle(
    PreviousCenterX - (PreviousArrowWidth / 2), PreviousCenterY,
    PreviousCenterX, PreviousCenterY - ( PreviousArrowWidth / 2 ),
    PreviousCenterX, PreviousCenterY + ( PreviousArrowWidth / 2 )
    );
  //Previous Symbol Right Arrow
  if (PreviousPressed) {
    stroke(255);
    fill(255);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(5);
    fill(0);
  }
  triangle(
    PreviousCenterX, PreviousCenterY,
    PreviousCenterX + (PreviousArrowWidth / 2), PreviousCenterY - ( PreviousArrowWidth / 2 ),
    PreviousCenterX + (PreviousArrowWidth / 2), PreviousCenterY + ( PreviousArrowWidth / 2 )
    );

  //PLAY-PAUSE SYMBOL
  //
  //Play Symbol
  boolean PausePlayPressed = (localMouseX >= PausePlayDivX && localMouseX <= PausePlayDivX + PausePlayDivWidth && localMouseY >= PausePlayDivY && localMouseY <= PausePlayDivY + PausePlayDivHeight) && mousePressed;
  if (PausePlayPressed) {
    stroke(255);
    fill(255);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(5);
    fill(0);
  }
  if ( playList[currentSong].isPlaying() ) {
    float PauseRectOneDivX = PausePlayDivX + ( PausePlayDivWidth / 5 );
    float PauseRectOneDivY = PausePlayDivY + ( PausePlayDivHeight / 5 );
    float PauseRectOneDivWidth =  PausePlayDivWidth / 5 ;
    float PauseRectOneDivHeight = PausePlayDivHeight * 0.6 ;
    rect(PauseRectOneDivX, PauseRectOneDivY, PauseRectOneDivWidth, PauseRectOneDivHeight);
    //
    float PauseRectTwoDivX = PausePlayDivX + ( PausePlayDivWidth * 0.6 );
    float PauseRectTwoDivY = PausePlayDivY + ( PausePlayDivHeight / 5 );
    float PauseRectTwoDivWidth =  PausePlayDivWidth / 5 ;
    float PauseRectTwoDivHeight = PausePlayDivHeight * 0.6 ;
    rect(PauseRectTwoDivX, PauseRectTwoDivY, PauseRectTwoDivWidth, PauseRectTwoDivHeight );
  } else {
    float PlayPointOneDivX = PausePlayDivX + ( PausePlayDivWidth / 5 );
    float PlayPointOneDivY = PausePlayDivY + ( PausePlayDivHeight / 5 );
    float PlayPointTwoDivX = PausePlayDivX + ( PausePlayDivWidth / 5 );
    float PlayPointTwoDivY = PausePlayDivY + ( PausePlayDivHeight * 0.8 );
    float PlayPointThreeDivX = PausePlayDivX + ( PausePlayDivWidth * 0.8 );
    float PlayPointThreeDivY = PausePlayDivY + ( PausePlayDivHeight / 2 );
    triangle( PlayPointOneDivX, PlayPointOneDivY, PlayPointTwoDivX, PlayPointTwoDivY, PlayPointThreeDivX, PlayPointThreeDivY );
  }

  //Next Symbol Right Arrow
  boolean NextPressed = (localMouseX >= NextDivX && localMouseX <= NextDivX + NextDivWidth && localMouseY >= NextDivY && localMouseY <= NextDivY + NextDivHeight) && mousePressed;
  if (NextPressed) {
    stroke(255);
    fill(255);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(5);
    fill(0);
  }
  triangle(
    NextCenterX + (NextArrowWidth / 2), NextCenterY,
    NextCenterX, NextCenterY - ( NextArrowWidth / 2 ),
    NextCenterX, NextCenterY + ( NextArrowWidth / 2 )
    );
  //Next Symbol Left Arrow
  if (NextPressed) {
    stroke(255);
    fill(255);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(5);
    fill(0);
  }
  triangle(
    NextCenterX, NextCenterY,
    NextCenterX - (NextArrowWidth / 2), NextCenterY - ( NextArrowWidth / 2 ),
    NextCenterX - (NextArrowWidth / 2), NextCenterY + ( NextArrowWidth / 2 )
    );

  //Fast Forward Symbol Arc
  boolean FastForwardPressed = (localMouseX >= FastForwardDivX && localMouseX <= FastForwardDivX + FastForwardDivWidth && localMouseY >= FastForwardDivY && localMouseY <= FastForwardDivY + FastForwardDivHeight) && mousePressed;
  if (FastForwardPressed) {
    stroke(255);
    noFill();
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(5);
    noFill();
  }
  float FastForwardCenterX = FastForwardDivX + ( FastForwardDivWidth / 2 );
  float FastForwardCenterY = FastForwardDivY + ( FastForwardDivHeight / 2 );
  float FastForwardRadius = 25 ;
  arc(FastForwardCenterX, FastForwardCenterY, FastForwardRadius * 2, FastForwardRadius * 2, -5.3, -0.5 ); // From 0 to PI (half-circle)
  float FastForwardEndX = FastForwardCenterX + FastForwardRadius;
  float FastForwardEndY = FastForwardCenterY;
  float FastForwardArrowSize = FastForwardRadius * 0.5 ;
  //Fast Forward Symbol Arrow Head
  if (FastForwardPressed) {
    stroke(255);
    fill(255);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(5);
    fill(0);
  }
  triangle(
    FastForwardEndX, FastForwardEndY,
    FastForwardEndX - FastForwardArrowSize / 2, FastForwardEndY - FastForwardArrowSize,
    FastForwardEndX + FastForwardArrowSize / 2, FastForwardEndY - FastForwardArrowSize
    );

  //Shuffle Symbol
  boolean ShufflePressed = (localMouseX >= ShuffleDivX && localMouseX <= ShuffleDivX + ShuffleDivWidth && localMouseY >= ShuffleDivY && localMouseY <= ShuffleDivY + ShuffleDivHeight) && mousePressed;
  if (ShufflePressed) {
    stroke(255);
    fill(255);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(5);
    fill(0);
  }
  float ShuffleCenterX = ShuffleDivX + ( ShuffleDivWidth / 2 );
  float ShuffleCenterY = ShuffleDivY + ( ShuffleDivHeight / 2 );
  float hSpace = ShuffleDivWidth * 0.3;
  float vSpace = ShuffleDivHeight * 0.2;
  float leftX  = ShuffleCenterX - hSpace;
  float rightX = ShuffleCenterX + hSpace;
  float topY   = ShuffleCenterY - vSpace;
  float botY   = ShuffleCenterY + vSpace;
  bezier(leftX, topY, ShuffleCenterX - hSpace/2, topY, ShuffleCenterX + hSpace/2, botY, rightX, botY);
  bezier(leftX, botY, ShuffleCenterX - hSpace/2, botY, ShuffleCenterX + hSpace/2, topY, rightX, topY);
  float shuffleArrowSize = ShuffleDivWidth * 0.12;
  if (ShufflePressed) {
    stroke(255);
    fill(255);
    strokeWeight(5);
  } else {
    stroke(0);
    strokeWeight(5);
    fill(0);
  }
  pushMatrix();
  translate(rightX, topY);
  rotate(PI * 10);
  triangle(0, 0, -shuffleArrowSize, -shuffleArrowSize/2, -shuffleArrowSize, shuffleArrowSize/2);
  popMatrix();
  pushMatrix();
  translate(rightX, botY);
  triangle(0, 0, -shuffleArrowSize, -shuffleArrowSize/2, -shuffleArrowSize, shuffleArrowSize/2);
  popMatrix();

  //Quit Symbol
  stroke(0);
  strokeWeight(7.5);
  noFill();
  float QuitLineOneXOne = QuitDivX + ( QuitDivWidth * 0.2 );
  float QuitLineOneYOne = QuitDivY + ( QuitDivHeight * 0.8 );
  float QuitLineOneXTwo = QuitDivX + ( QuitDivWidth * 0.8 );
  float QuitLineOneYTwo = QuitDivY + ( QuitDivHeight * 0.2 );
  line(QuitLineOneXOne, QuitLineOneYOne, QuitLineOneXTwo, QuitLineOneYTwo);
  float QuitLineTwoXOne = QuitDivX + ( QuitDivWidth * 0.2 );
  float QuitLineTwoYOne = QuitDivY + ( QuitDivHeight * 0.2 );
  float QuitLineTwoXTwo = QuitDivX + ( QuitDivWidth * 0.8 );
  float QuitLineTwoYTwo = QuitDivY + ( QuitDivHeight * 0.8 );
  line(QuitLineTwoXOne, QuitLineTwoYOne, QuitLineTwoXTwo, QuitLineTwoYTwo);
  //
}
//
//
//
void mousePressed() {
  float localMouseX = (mouseX - (width - appWidth * scaleFactor) / 2) / scaleFactor;
  float localMouseY = (mouseY - (height - appHeight * scaleFactor) / 2) / scaleFactor;
  //
  //BASE FOR BUTTON CLICK
  /*
  if (localMouseX >= BOXDivX && localMouseX <= BOXDivX + BOXDivWidth &&
   localMouseY >= BOXDivY && localMouseY <= BOXDivY + BOXDivHeight) {
   }
   */
  //
  // LOOP BUTTON
  if (localMouseX >= LoopDivX && localMouseX <= LoopDivX + LoopDivWidth &&
    localMouseY >= LoopDivY && localMouseY <= LoopDivY + LoopDivHeight) {
    //
    if (playList[currentSong].isLooping()) {
      playList[currentSong].play();
    } else {
      playList[currentSong].loop();
    }
  }

  //
  //REWIND BUTTON
  if (localMouseX >= RewindDivX && localMouseX <= RewindDivX + RewindDivWidth &&
    localMouseY >= RewindDivY && localMouseY <= RewindDivY + RewindDivHeight) {
    playList[currentSong].skip( -10000 );
  }

  //
  //PREVIOUS SONG BUTTON
  if (localMouseX >= PreviousDivX && localMouseX <= PreviousDivX + PreviousDivWidth &&
    localMouseY >= PreviousDivY && localMouseY <= PreviousDivY + PreviousDivHeight) {
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
  //PLAY-PAUSE BUTTON
  if (localMouseX >= PausePlayDivX && localMouseX <= PausePlayDivX + PausePlayDivWidth &&
    localMouseY >= PausePlayDivY && localMouseY <= PausePlayDivY + PausePlayDivHeight) {
    //
    if (playList[currentSong].isPlaying()) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].play();
    }
  }

  //
  //NEXT SONG BUTTON
  if (localMouseX >= NextDivX && localMouseX <= NextDivX + NextDivWidth &&
    localMouseY >= NextDivY && localMouseY <= NextDivY + NextDivHeight) {
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

  //
  //FAST FORWARD BUTTON
  if (localMouseX >= FastForwardDivX && localMouseX <= FastForwardDivX + FastForwardDivWidth &&
    localMouseY >= FastForwardDivY && localMouseY <= FastForwardDivY + FastForwardDivHeight) {
    playList[currentSong].skip( 10000 );
  }

  //
  //SHUFFLE BUTTON
  if (localMouseX >= ShuffleDivX && localMouseX <= ShuffleDivX + ShuffleDivWidth &&
    localMouseY >= ShuffleDivY && localMouseY <= ShuffleDivY + ShuffleDivHeight) {
    playList[currentSong].pause();
    playList[currentSong].rewind();
    currentSong = int(random(numberOfSongs));
    playList[currentSong].play();
  }

  //
  //QUIT BUTTON
  if (localMouseX >= QuitDivX && localMouseX <= QuitDivX + QuitDivWidth &&
    localMouseY >= QuitDivY && localMouseY <= QuitDivY + QuitDivHeight) {
    exit();
  }

  //
  //SONG ONE BUTTON
  if ((localMouseX >= SongTitleOneDivX && localMouseX <= SongTitleOneDivX + SongTitleOneDivWidth &&
    localMouseY >= SongTitleOneDivY && localMouseY <= SongTitleOneDivY + SongTitleOneDivHeight)
    ||
    (localMouseX >= SongPicOneDivX && localMouseX <= SongPicOneDivX + SongPicOneDivWidth &&
    localMouseY >= SongPicOneDivY && localMouseY <= SongPicOneDivY + SongPicOneDivHeight)) {
    playList[currentSong].pause();
    playList[currentSong].rewind();
    currentSong = (currentSong + 1) % numberOfSongs;
    playList[currentSong].play();
  }

  //
  //SONG TWO BUTTON
  if ((localMouseX >= SongTitleTwoDivX && localMouseX <= SongTitleTwoDivX + SongTitleTwoDivWidth &&
    localMouseY >= SongTitleTwoDivY && localMouseY <= SongTitleTwoDivY + SongTitleTwoDivHeight)
    ||
    (localMouseX >= SongPicTwoDivX && localMouseX <= SongPicTwoDivX + SongPicTwoDivWidth &&
    localMouseY >= SongPicTwoDivY && localMouseY <= SongPicTwoDivY + SongPicTwoDivHeight)) {
    playList[currentSong].pause();
    playList[currentSong].rewind();
    currentSong = (currentSong + 2) % numberOfSongs;
    playList[currentSong].play();
  }

  //
  //SONG THREE BUTTON
  if ((localMouseX >= SongTitleThreeDivX && localMouseX <= SongTitleThreeDivX + SongTitleThreeDivWidth &&
    localMouseY >= SongTitleThreeDivY && localMouseY <= SongTitleThreeDivY + SongTitleThreeDivHeight)
    ||
    (localMouseX >= SongPicThreeDivX && localMouseX <= SongPicThreeDivX + SongPicThreeDivWidth &&
    localMouseY >= SongPicThreeDivY && localMouseY <= SongPicThreeDivY + SongPicThreeDivHeight)) {
    playList[currentSong].pause();
    playList[currentSong].rewind();
    currentSong = (currentSong + 3) % numberOfSongs;
    playList[currentSong].play();
  }

  //
  //SONG FOUR BUTTON
  if ((localMouseX >= SongTitleFourDivX && localMouseX <= SongTitleFourDivX + SongTitleFourDivWidth &&
    localMouseY >= SongTitleFourDivY && localMouseY <= SongTitleFourDivY + SongTitleFourDivHeight)
    ||
    (localMouseX >= SongPicFourDivX && localMouseX <= SongPicFourDivX + SongPicFourDivWidth &&
    localMouseY >= SongPicFourDivY && localMouseY <= SongPicFourDivY + SongPicFourDivHeight)) {
    playList[currentSong].pause();
    playList[currentSong].rewind();
    currentSong = (currentSong + 4) % numberOfSongs;
    playList[currentSong].play();
  }

  //
  //SONG FIVE BUTTON
  if ((localMouseX >= SongTitleFiveDivX && localMouseX <= SongTitleFiveDivX + SongTitleFiveDivWidth &&
    localMouseY >= SongTitleFiveDivY && localMouseY <= SongTitleFiveDivY + SongTitleFiveDivHeight)
    ||
    (localMouseX >= SongPicFiveDivX && localMouseX <= SongPicFiveDivX + SongPicFiveDivWidth &&
    localMouseY >= SongPicFiveDivY && localMouseY <= SongPicFiveDivY + SongPicFiveDivHeight)) {
    playList[currentSong].pause();
    playList[currentSong].rewind();
    currentSong = (currentSong + 5) % numberOfSongs;
    playList[currentSong].play();
  }
}//End mousePressed
//
//
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
