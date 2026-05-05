// Fletcher Hamilton

int a, b, y, z;
PImage rabbitImg, windowImg, barnDoorImg, fenceImg;
float EarthDiameter, EarthRadius, pixelsInMetre;
boolean up, g;

void setup() {
  
  // Starting positions for rabbits
  a = 800;
  b = 1000;
  
  y = 700;
  z = 625;
  up = true;
  g = false;

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
  fill(0);
  if (y < 600) up = false;
  else if (y > 700) up = true;

  if (up == true) {
    y -= 3;
    z += 2;
  } else {
    y += 3;
    z -= 2;
  }

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

  // Rabbit
  rabbit(a, y);
  rabbit(1000, z);

  // Fence
  for (int i = 700; i < width; i += 143) image(fenceImg, i, 700, 143, 100);

  if (g == true) {
    stroke(0);
    for (int i = 50; i < width; i += 50) {
      if (i % 100 == 0) strokeWeight(2);
      else strokeWeight(1);
      line(0, i, width, i);
      line(i, 0, i, height);
    }
  }
}

void rabbit(int x, int y) {
  image(rabbitImg, x, y, 73.5431731, 100);
}

void keyPressed() {
  if (key == 'g' || key == 'G') g = !g;
}
