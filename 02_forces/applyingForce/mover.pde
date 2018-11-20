class Mover {
PVector location, velocity, acceleration;

Mover(){
        location = new PVector(width/2,height/2);
        velocity = new PVector(0,0);
        acceleration = new PVector(0,0);
}
void update(){
        velocity.add(acceleration);
        location.add(velocity);
        // Clean acceleration each frame
        acceleration.mult(0);
        // velocity.limit(5);
}

void applyForce(PVector force){
        acceleration.add(force);
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
        ellipse(location.x,location.y,16,16);
}


}
