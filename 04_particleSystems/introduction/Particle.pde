// Simple Particle System
// Daniel Shiffman <http://www.shiffman.net>

// A simple Particle class

class Particle {
PVector location;
PVector velocity;
PVector acceleration;
float lifespan;

Particle() {
        acceleration = new PVector(0, 0.05);
        velocity = new PVector(random(-1, 1), random(-1, 0));
        location = new PVector(mouseX,mouseY);
        lifespan = 255.0;
}

void run() {
        update();
        display();
}

// Method to update location
void update() {
        velocity.add(acceleration);
        location.add(velocity);
        lifespan -= 2.0;
}

// Method to display
void display(){
        noStroke();
        fill(#fa4931, lifespan);
        ellipse(location.x, location.y, 12, 12);
}

// Is the particle still useful?
boolean isDead() {
        if (lifespan < 0.0) {
                return true;
        }
        else {
                return false;
        }
}
}
