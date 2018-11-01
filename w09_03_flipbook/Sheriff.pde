class Sheriff {
  int numFrames;
  int currentFrame;
  PImage[] frames;

  Sheriff() {
    numFrames = 12;
    currentFrame = 0;
    frames = new PImage[numFrames];
    
    frames[0]  = loadImage("00.jpg");
    frames[1]  = loadImage("01.jpg"); 
    frames[2]  = loadImage("02.jpg");
    frames[3]  = loadImage("03.jpg"); 
    frames[4]  = loadImage("04.jpg");
    frames[5]  = loadImage("05.jpg"); 
    frames[6]  = loadImage("06.jpg");
    frames[7]  = loadImage("07.jpg"); 
    frames[8]  = loadImage("08.jpg");
    frames[9]  = loadImage("09.jpg"); 
    frames[10] = loadImage("10.jpg");
    frames[11] = loadImage("11.jpg");
  }
  
  void update() {
    currentFrame = (currentFrame + 1) % numFrames;
  }

  void display() {
    image(frames[currentFrame], width/2, height/2, 512, 256);
  }
}
