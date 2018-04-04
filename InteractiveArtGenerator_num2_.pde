ArrayList<Dot> dots;

void setup() {
  size(1200, 200);

  dots = new ArrayList<Dot>();
  for (int i = 0; i < 50; ++i) {
    dots.add(new Dot(random(width), random(height), 5));
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