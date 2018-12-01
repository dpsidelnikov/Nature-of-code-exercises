//Global Variables
PVector origin;
Mover bob;
Spring spring;
float restLen;

void setup() {
        size(640,380);
        pixelDensity(2);
        restLen = 200;
        origin = new PVector(width/2,0);
        bob = new Mover(width/2,240);
}

void draw() {
        background(255);
        line(origin.x,origin.y,bob.location.x,bob.location.y);

        PVector wind = new PVector(0.1,0);
        if (mousePressed) {
                bob.applyForce(wind);
        }

        PVector gravity = new PVector(0,0.1);
        bob.applyForce(gravity);
        spring.connect(bob);
        spring.constrainLength(bob,30,30);
        bob.update();
        bob.display();

}
