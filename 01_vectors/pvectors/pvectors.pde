//Global Variables
Ball b;
float n = 1;
void setup() {
        size(400,300);
        pixelDensity(2);
        b = new Ball();

}

void draw() {
        background(#fff5e7);
        b.move();
        b.bounce();
        b.display();
        println(noise(n));
        n++;
}
