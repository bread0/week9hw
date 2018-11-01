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
  frames[0]  = loadImage("PT_anim0000.gif");
  frames[1]  = loadImage("PT_anim0001.gif"); 
  frames[2]  = loadImage("PT_anim0002.gif");
  frames[3]  = loadImage("PT_anim0003.gif"); 
  frames[4]  = loadImage("PT_anim0004.gif");
  frames[5]  = loadImage("PT_anim0005.gif"); 
  frames[6]  = loadImage("PT_anim0006.gif");
  frames[7]  = loadImage("PT_anim0007.gif"); 
  frames[8]  = loadImage("PT_anim0008.gif");
  frames[9]  = loadImage("PT_anim0009.gif"); 
  frames[10] = loadImage("PT_anim0010.gif");
  frames[11] = loadImage("PT_anim0011.gif");

  Images() {
  }

  void display() {
    currentFrame = (currentFrame+1) % numFrames;
    image(frames[currentFrame], width/2, height/2);
  }
}
