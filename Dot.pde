class Dot {
  float x, y, r;
  float seedX, seedY;

  Dot(float _x, float _y, float _r) {
    x = _x;
    y = _y;
    r = _r;

    seedX = random(10);
    seedY = random(10);
  }

  void render() { 
    fill(255);
    delay(1);
    ellipse(x, y, r, r);
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