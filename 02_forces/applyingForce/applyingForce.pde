//Global Variables
Mover m;

void setup() {
        size(640,480);
        pixelDensity(2);
        m = new Mover();
}

void draw() {
        background(255);

        PVector gravity = new PVector(0,0.9);
        m.applyForce(gravity);
        if (mousePressed) {
                PVector wind = new PVector(0.3,0.0);
                m.applyForce(wind);
        }


        m.update();
        m.edges();
        m.display();
}
