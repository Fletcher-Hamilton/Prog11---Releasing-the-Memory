// Fletcher Hamilton
PImage rabbitImg, windowImg;

void setup() {
  size(1500, 1000);
  // Load sprites
  rabbitImg = loadImage("rabbit.png");
  windowImg = loadImage("window.png");
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
  //rect();
  //rect();
  
  
  stroke(0);
  for (int i = 50; i < width; i += 50) {
    if (ifDivisible()) {
      
    }
  }
  
}
