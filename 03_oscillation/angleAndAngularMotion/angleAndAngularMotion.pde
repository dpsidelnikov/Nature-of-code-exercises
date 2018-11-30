//Global Variables
float a = 0.0;
float aVelocity = 0.0;
float aAcceleration = 0.001;

void setup() {
        size(640,480);
        pixelDensity(2);

}

void draw() {
        background(255);

        aAcceleration  = map (mouseX, 0, width, -0.001,0.001);

        a+= aVelocity;
        aVelocity += aAcceleration;

        rectMode(CENTER);
        noStroke();
        fill(#9259e4);
        translate(width/2,height/2);
        rotate(a);
        rect(0,0,64,36);

}
