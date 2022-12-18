import processing.video.*;

Capture video;
Movie movie; 
PImage backgroundImage;
PImage backgroundReplace;

float threshold = 70;

void setup() {
  size(320, 240);
  video = new Capture(this, width, height, 30);
  movie = new Movie(this, "cat.mov"); 


  video.start();
  // Step 3. Start movie playing
  movie.loop();

  backgroundImage = createImage(video.width, video.height, RGB);
  backgroundReplace = loadImage("creo.png");
  
}

void captureEvent(Capture video) {
  video.read();
}


void draw() {

  loadPixels();
  video.loadPixels(); 
  backgroundImage.loadPixels();


  for (int x = 0; x < video.width; x ++ ) {
    for (int y = 0; y < video.height; y ++ ) {
      int loc = x + y*video.width;
      color fgColor = video.pixels[loc];


      color bgColor = backgroundImage.pixels[loc];


      float r1 = red(fgColor);
      float r2 = blue(fgColor);
      float r3 = green(fgColor);
      float g3 = green(bgColor);
      float diff = dist(r1, r2, r3, g3);


      if (diff > threshold) {

        pixels[loc] = movie.pixels[loc];
      } else {

        pixels[loc] = fgColor;
      }
    }
  }
  updatePixels();
}

void mousePressed() {

  backgroundImage.copy(video, 0, 0, video.width, video.height, 0, 0, video.width, video.height);
  backgroundImage.updatePixels();
}

void movieEvent(Movie movie) {
  movie.read();
}
