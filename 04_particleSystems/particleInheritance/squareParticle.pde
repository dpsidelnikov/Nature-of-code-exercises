class SquareParticle extends Particle {

SquareParticle(PVector l) {
        super(l);

}
void display(){
        noStroke();
        fill(#3cab9a, lifespan);
        rectMode(CENTER);
        rect(location.x, location.y, 12, 12);
}
}
