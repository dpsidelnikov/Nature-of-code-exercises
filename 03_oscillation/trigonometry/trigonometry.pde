//Remember SOHCAHTOA
//Global Variables
float t = 0;
float a = 0.0;
float aVelocity = 0.01;
float aAcceleration = 0.0;

void setup() {
        size(640,480);
        pixelDensity(2);
        background(#ffffff);
}

void draw() {
        translate(width/2,height/2);
        float r = noise(t);
        r = map(r,0,1,0,width/2);
        float x = r*cos(a);
        float y = r*sin(a);
        noStroke();
        fill(#de9872);
        ellipse(x,y,20,20);

        a += aVelocity;
        aVelocity += aAcceleration;

        aVelocity = constrain(aVelocity,0,0.3);
        t = t+0.01;

}
