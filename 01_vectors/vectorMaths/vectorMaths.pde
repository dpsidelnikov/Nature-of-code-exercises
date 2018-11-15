//Global Variables
PVector location, velocity, center, mouse;

void setup() {
        size(640,480);
        pixelDensity(2);
        location = new PVector(width/2,height/2);
        velocity = new PVector(0,0);
        center = new PVector(width/2,height/2);
}

void draw() {
        mouse = new PVector(mouseX,mouseY);
        background(255);
        mouse.sub(center);
        mouse.setMag(2);
        println(mouse);
        velocity = mouse;
        location.add(velocity);

        noStroke();
        fill(#fa4931);
        ellipse(location.x,location.y,16,16);
}
