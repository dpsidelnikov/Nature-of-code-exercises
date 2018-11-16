class Mover {
PVector location, velocity, acceleration, mouse;

Mover(){
        location = new PVector(width/2,height/2);
        velocity = new PVector(0,0);
        acceleration = new PVector(0,0);
}
void move(){
        PVector mouse = new PVector(mouseX, mouseY);
        mouse.sub(location);
        mouse.setMag(0.5);
        acceleration = mouse;
        velocity.add(acceleration);
        location.add(velocity);
        velocity.limit(5);
}

void display(){
        noStroke();
        fill(#fa4931);
        ellipse(location.x,location.y,15,15);
}
}
