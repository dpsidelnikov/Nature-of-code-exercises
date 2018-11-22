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
                // This makes every object been atracted by the gravity with the same intensity
                gravity.mult(m.mass);
                m.applyForce(gravity);
                // PVector wind = new PVector(0.3,0.0);
                // m.applyForce(wind);
                // Let's apply friction!
                if (mousePressed) {
                        PVector drag = m.velocity.get();
                        drag.normalize();
                        float c = -0.03;
                        float speed = m.velocity.mag();
                        drag.mult(c*speed*speed);
                        m.applyForce(drag);
                }


                m.update();
                m.edges();
                m.display();
        }
}
