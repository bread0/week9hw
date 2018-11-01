// code 1 FA 18
// bryan ma

// this code is adapted from the Processing example "Sequential" by James Paterson.
// this sketch loads in 12 separate images into an array of PImages, then plays
// them sequentially in the draw loop.

// i will explain the "%" operator in class.

// create your own image sequence. 
// then change the sketch to load in and display your image sequence.

// once you've done this, adapt the image sequence to be part of a class behavior.
// imagine the "Mario" object we've discussed in class - animating a character 
// like that could be done in this way - creating the class to contain an array 
// of images, and having the class's display method cycle through the frames.  

Images anim = new Images();

void setup() {
  size(640, 360);
  frameRate(24);
  imageMode(CENTER);
} 

void draw() { 
  background(0);
  anim.display();
}


class Images {
  int numFrames = 12;
  int currentFrame = 0;
  PImage[] frames = new PImage[numFrames];

  Images() {
    frames[0]  = loadImage("01.jpg");
    frames[1]  = loadImage("02.jpg"); 
    frames[2]  = loadImage("03.jpg");
    frames[3]  = loadImage("04.jpg"); 
    frames[4]  = loadImage("05.jpg");
    frames[5]  = loadImage("06.jpg"); 
    frames[6]  = loadImage("07.jpg");
    frames[7]  = loadImage("08.jpg"); 
    frames[8]  = loadImage("09.jpg");
    frames[9]  = loadImage("10.jpg"); 
    frames[10] = loadImage("11.jpg");
    frames[11] = loadImage("12.jpg");
  }

  void display() {
    currentFrame = (currentFrame+1) % numFrames;
    image(frames[currentFrame], width/2, height/2);
  }
}
