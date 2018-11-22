//Global Variables
Mover[] movers;

void setup() {
        size(640,480);
        pixelDensity(2);
        movers = new Mover[5];
        for (int i = 0; i < movers.length; i++) {
                movers[i] = new Mover();
        }
}

void draw() {
        background(255);

        for (Mover m : movers) {
                PVector gravity = new PVector(0,0.3);
                gravity.mult(m.mass);
                m.applyForce(gravity);

                if (mousePressed) {
                        PVector wind = new PVector(0.3,0.0);
                        m.applyForce(wind);
                }
                m.update();
                m.edges();
                m.display();
        }
}
