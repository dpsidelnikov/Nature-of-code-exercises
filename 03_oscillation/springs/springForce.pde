class Spring {
PVector anchor;
float restLen;
float k = 0.2;;

Spring(float x, float y, int l){
        anchor = new PVector(x,y);
        restLen = l;
}

void connect(Mover bob){
        PVector spring = PVector.sub(bob.location, anchor);
        float currentLen = spring.mag();

        float stretch = currentLen - restLen;
        spring.normalize();
        spring.mult(-k*stretch);
        bob.applyForce(spring);


}
}
