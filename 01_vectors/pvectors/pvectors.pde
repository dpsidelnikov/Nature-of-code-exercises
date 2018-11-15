//Global Variables
Ball b;

void setup() {
        size(400,300);
        pixelDensity(2);
        b = new Ball();
}

void draw() {
        background(#fff5e7);
        b.move();
        b.bounce();
        b.display();
}
