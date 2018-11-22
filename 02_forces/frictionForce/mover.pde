class Mover {
PVector location, velocity, acceleration;
float mass;

Mover(){
        location = new PVector(random(width),height/2);
        velocity = new PVector(0,0);
        acceleration = new PVector(0,0);
        mass = random(1,2);
}
void update(){
        velocity.add(acceleration);
        location.add(velocity);
        // Clean acceleration each frame
        acceleration.mult(0);
        // velocity.limit(5);
}

void applyForce(PVector force){
        PVector f = PVector.div(force,mass);
        acceleration.add(f);
}

void edges() {

        if (location.x > width) {
                location.x = width;
                velocity.x *= -1;
        } else if (location.x < 0) {
                velocity.x *= -1;
                location.x = 0;
        }

        if (location.y > height) {
                velocity.y *= -1;
                location.y = height;
        } else if (location.y < 0) {
                velocity.y *= -1;
                location.y = 0;
        }

}

void display(){
        noStroke();
        fill(#fa4931);
        ellipse(location.x,location.y,mass*20,mass*20);
}


}
