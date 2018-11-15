class Ball {
PVector location, velocity;

Ball(){
        location = new PVector(width/2,height/2);
        velocity = new PVector(1,3.3);
}
void move(){
        location.add(velocity);
}
void bounce(){
        if ((location.x > width) || (location.x < 0)) {
                velocity.x = velocity.x * -1;
        }

        if ((location.y > height) || (location.y < 0)) {
                velocity.y = velocity.y * -1;
        }
}

void display(){
        noStroke();
        fill(#fa4931);
        ellipse(location.x,location.y,16,16);
}
}
