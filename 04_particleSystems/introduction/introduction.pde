//Global Variables
ArrayList<Particle> particles;

void setup() {
        size(640,480);
        pixelDensity(2);
        particles = new ArrayList<Particle>();
        // for (int i = 0; i < 50; i++) {
        //         particles.add(new Particle());
        // }


}

void draw() {
        background(#e9e5d7);
        particles.add(new Particle());
        for (int i = particles.size()-1; i >= 0; i--) {
                Particle p = particles.get(i);
                p.update();
                p.display();
                if (p.isDead()) {
                        particles.remove(i);
                }
        }
}
