float[] vals;
float[] norms;

void setup(){
        size(400,300);
        pixelDensity(2);
        vals = new float[width];
        norms = new float[width];
}

void draw( ) {
        background(100);
        float n = montecarlo();
        int index = int(n*width);
        vals[index]++;
        stroke(255);

        boolean normalization = false;
        float maxy = 0.0;

        for (int x = 0; x < vals.length; x++) {
                line(x, height, x, height-norms[x]);
                if (vals[x] > height) normalization = true;
                if (vals[x] > maxy) maxy = vals[x];
        }
        for (int x = 0; x < vals.length; x++) {
                if (normalization) norms[x] = (vals[x] / maxy) * (height);
                else norms[x] = vals[x];
        }
}
float montecarlo() {
        // Have we found one yet
        boolean foundone = false;
        int hack = 0; // let's count just so we don't get stuck in an infinite loop by accident
        while (!foundone && hack < 10000) {
                // Pick two random numbers
                float r1 = (float) random(1);
                float r2 = (float) random(1);
                float y = r1*r1; // y = x*x (change for different results)
                // If r2 is valid, we'll use this one
                if (r2 < y) {
                        foundone = true;
                        return r1;
                }
                hack++;
        }
        // Hack in case we run into a problem (need to improve this)
        return 0;
}
