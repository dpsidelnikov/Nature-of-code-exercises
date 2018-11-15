//Global Variables
Ball b;

void setup() {
        size(400,300);
        pixelDensity(2);
        b = new Ball();
        background(#fff5e7);
}

void draw() {

        b.move();
        b.bounce();
        b.display();
}
