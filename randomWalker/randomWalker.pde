Walker w;

void setup(){
        size(640,480);
        background(255);
        w = new Walker();
        pixelDensity(2);
}
void draw(){
        w.step();
        w.render();
}
