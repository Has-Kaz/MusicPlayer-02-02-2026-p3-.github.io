/* Aspect Ratio
*/
//
//Display
fullScreen();
//
String upArrow = "..";
String dependenciesFolder = "Dependencies";
String imagesFolder = "Images";
String imageName1 = "67-kid";
String imageName2 = "SoccerBall";
String imageName3 = "bike";
String fileExtension = ".jpg";
String open = "/";

//
//Concatenation
//Note, Cut Cut, See Absolute Pathway: 
//See Relative Pathway: Dependencies\Images
String imageDirectory = upArrow + open + upArrow + open + dependenciesFolder + open + imagesFolder + open;
String pathway1, pathway2, pathway3;
for ( int i=1; i<=3; i++ ) {
  pathway[1] = imageDirectory + imaageName[i] + fileExtension;
  image[i] = loadimage( pathway[1] );
}
String 
  String = imageDirectory + imageName2 + fileExtension;
String = imageDirectory + imageName3 + fileExtension;
//println( pathway );
//


image(image2, 0, 0);
image(image3, 0, 0);
//
for ( int i=1; i<=3; i++ ) {
  image(image1, 0, 0);
  image(image2, 0, 0);
  image(image3, 0, 0);
}

PImage image1, image2, image3;
image1 = loadImage( pathway1 );
image2 = loadImage( pathway2 );
image3 = loadImage( pathway3 );
//
