//Global Variables
Mover m;

void setup() {
        size(640,480);
        pixelDensity(2);
        m = new Mover();
        background(#f2f2f2);
}

void draw() {

        m.move();
        m.display();
        // m.bounce();
}
