//Global Variables
import java.util.Iterator;
ArrayList<ParticleSystem> systems;

void setup() {
        size(640,480, P2D);
        pixelDensity(2);
        systems = new ArrayList<ParticleSystem>();
        // for (int i = 0; i < 50; i++) {
        //         particles.add(new Particle());
        // }

}

void draw() {
        background(#e9e5d7);
        for (ParticleSystem ps: systems) {
                ps.addParticle();
                ps.run();
        }
}

void mousePressed(){
        systems.add(new ParticleSystem(1, new PVector(mouseX, mouseY)));
}
