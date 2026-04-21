import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
Minim minim; 
int numberOfSongs = 1;
int numberOfSoundEffect = 1;
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffect ];
int currentSong = numberOfSongs - numberOfSongs;
//
//Display
size( 700, 500 ); 
//fullScreen();  
int appWidth = width; 
int appHeight = height;
//
minim = new Minim(this);
String upArrow = "..";
String open = "/";
String musicFolder = "Music"; 
String soundEffectsFolder = "Sound Effects"; 
String dependanciesFolder = "Dependencies"; 
String songName1 = "Eureka";
String songName2 = "Cycles";
String songName3 = "Ghost_Walk";
String soundEffect1 = "Car_Door_Closing";
String fileExtension_mp3 = ".mp3";
//
String musicDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + musicFolder + open ;
String soundEffectsDirectory = upArrow + open + upArrow + open + dependanciesFolder + open + soundEffectsFolder + open ;
String pathway = musicDirectory + songName1 + fileExtension_mp3;
println(pathway);
playList[ currentSong ] = minim.loadFile( pathway ); 
pathway = soundEffectsDirectory + soundEffect1 + fileExtension_mp3; 
println(pathway);
soundEffects[currentSong] = minim.loadFile( pathway ); 
//
if ( playList[currentSong]==null || soundEffects[currentSong]==null ) {
  println("The Play List or Sound Effects did not load properly");
  printArray(playList);
  printArray(soundEffects);
  /*
  println("Music Pathway", musicDirectory);
   println("Full Music File Pathway", file);
   */
} else {
  playList[currentSong].play();
  printArray(playList);
}
