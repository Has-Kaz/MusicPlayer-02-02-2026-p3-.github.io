import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
Minim minim;
int numberOfSongs = 3;
int numberOfSoundEffect = 1;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffect ];
int currentSong = numberOfSongs - numberOfSongs;
//
void setup() {
  //Display
  size( 700, 500 ); //width //height
  //fullScreen();  //displayWidth //displayHeight
  int appWidth = width; //Best Practice
  int appHeight = height;
  //
  //Music Loading
  minim = new Minim(this);
  String upArrow = "..";
  String open = "/";
  String musicFolder = "Music";
  String soundEffectsFolder = "Sound Effects";
  String dependanciesFolder = "Dependencies";
  //
  String[] songName = new String[numberOfSongs];
  songName[currentSong] = "Cycles";
  currentSong++;
  songName[currentSong] = "Eureka";
  currentSong++;
  songName[currentSong] = "Ghost_Walk";
  currentSong=0;


  String songName1 = "Cycles";
  String songName2 = "Eureka";
  String songName3 = "Ghost_Walk";
  String soundEffect1 = "Car_Door_Closing";
  String fileExtension_mp3 = ".mp3";
  //
  //
  String musicDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + musicFolder + open ; //Concatenation
  String soundEffectsDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + soundEffectsFolder + open ; //Concatenation
  String pathway;
  for ( int i=0; i<numberOfSongs; i++) {
    pathway = musicDirectory + songName[i] + fileExtension_mp3; //TO BE Rewritten and deleted once file is LOADED
    playList[ currentSong ] = minim.loadFile( pathway ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  }
  pathway = soundEffectsDirectory + soundEffect1 + fileExtension_mp3; //Rewritting FILE
  soundEffects[currentSong] = minim.loadFile( pathway ); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
  //
  for ( int =0; i<numberOfSongs; i++ ) {
    if ( playList[i]==null ) { //ERROR, play list is NULL
      //See FILE or minim.loadFile
      println("The Play List or Sound Effects did not load properly");
      printArray(playList);
      exit();
    }
  }
  if ( playList[currentSong]==null || soundEffects[currentSong]==null ) { //ERROR, play list is NULL
    println("The Sound Effect did not load properly");
    printArray(soundEffects);
    exit();
  }
  //
}//End Setup
//
void draw() {
  playlist[currentSong].loop(); //No Loop Built In
}//End Draw
//
void mousePressed() {
}//End Mouse Pressed
//
void keyPressed() {
}//End Key Pressed
//
//End MAIN Program
