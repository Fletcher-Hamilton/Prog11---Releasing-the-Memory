// Fletcher Hamilton
PImage rabbitImg, windowImg, barnDoorImg, fenceImg;
float EarthDiameter, EarthRadius, pixelsInMetre;

void setup() {
  size(1500, 1000);

  // Actual diameter of Earth
  EarthDiameter = 12756.27;
  EarthRadius = EarthDiameter/2;

  pixelsInMetre = 3779.53;

  // Load sprites
  rabbitImg   = loadImage("rabbit.png");
  windowImg   = loadImage("window.png");
  barnDoorImg = loadImage("barnDoor.png");
  fenceImg    = loadImage("fence.png");
}

void draw() {
  background(#82C8E5); // sky blue

  // Barn
  stroke(#7C0A02); // barn red
  strokeWeight(2);
  fill(#7C0A02); // barn red
  rect(100, 300, 400, 500);
  triangle(100, 300, 300, 100, 500, 300);
  triangle(100, 300, 300, 100, 175, 175);
  triangle(300, 100, 500, 300, 425, 175);

  // Roof
  stroke(#71706E); // dark silver
  strokeWeight(10);
  line(300, 100, 450, 185);
  line(425, 175, 525, 335);
  line(300, 100, 150, 185);
  line(175, 175, 75, 335);

  // Window
  image(windowImg, 200, 200, 200, 200);

  // Barn door
  noStroke();
  image(barnDoorImg, 150, 525, 300, 300);

  // Grass
  fill(#009A17);
  circle(width/2, height+EarthRadius*pixelsInMetre-200, EarthDiameter*pixelsInMetre);

  // Fence
  for (int i = 700; i < width; i += 143) image(fenceImg, i, 700, 143, 100);

  // Rabbit
  stroke(0);
  for (int i = 50; i < width; i += 50) {
    if (i % 100 == 0) {
      strokeWeight(2);
    } else {
      strokeWeight(1);
    }
    line(0, i, width, i);
    line(i, 0, i, height);
  }
}
