
//create Array of my drawn Dot Objects
ArrayList<Dot> dots;

void setup() {
  size(1440, 200);
  smooth();

  dots = new ArrayList<Dot>();
  for (int i = 0; i < 50; ++i) {
    dots.add(new Dot(this, random(width), random(height), 10));
  }
}

void draw() {
  background(0);
  stroke(255);
  connect();
  for (int i = 0; i < dots.size(); ++i) {
    dots.get(i).move();
    dots.get(i).render();
  }
}

void connect() {
  int count =0;
  for (int i = 0; i < dots.size(); ++i) {
    for (int j = 0; j < dots.size(); ++j) {
      if (count<=5)
      {
        if (dist(dots.get(i).x, dots.get(i).y, dots.get(j).x, dots.get(j).y) < 100
          && dist(dots.get(i).x, dots.get(i).y, mouseX, mouseY) < 15) {
          line(dots.get(i).x, dots.get(i).y, dots.get(j).x, dots.get(j).y);
          count ++;
        }
      }
    }
  }
}
class Dot {
  float x, y, r;
  float seedX, seedY;
  private PApplet canvas;

  Dot(PApplet canvas, float _x, float _y, float _r) {
    this.canvas = canvas;
    x = _x;
    y = _y;
    r = _r;

    seedX = random(10);
    seedY = random(10);
  }

  void render() { 
    this.canvas.fill(255,0,0);
    delay(1);
    this.canvas.ellipse(x, y, r, r);
  }

  void move() {
    x += map(noise(seedX + (frameCount)*0.029), 0, 1, -1, 1);
    y += map(noise(seedY + (frameCount)*0.0012), 0, 1, -1, 1);
    
    if (x < 0) {
      x = width;
    } else if (x > width) {
      x = 0;
    }
    
    if (y < 0) {
      y = height;
    } else if (y > height) {
      y = 0;
    }
  }
}