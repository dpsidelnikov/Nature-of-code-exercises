class Walker {
int x,y,squareSide;
color colorValue;
Walker() {
        // Starts at the center of canvas
        x = width/2;
        y = height/2;
        squareSide = 20;
        colorValue = color(20,125,200);
}
void render() {
        // Draws the point
        rectMode(CENTER);
        noStroke();
        fill(colorValue);
        rect(x,y,squareSide,squareSide);
}
void step() {
        // Random value triggers certain change in the position
        int choice = int(random(4));
        if (choice == 0) {
                x += squareSide;
        } else if (choice == 1) {
                x -= squareSide;
        } else if (choice == 2) {
                y += squareSide;
        } else if (choice == 3) {
                y -= squareSide;
        }

        // Random value triggers certain color tone
        int colorChoice = int(random(2));
        if (colorChoice == 0) {
                colorValue +=25;
        } else if (choice == 1) {
                colorValue +=25;
        }

        // Avoid drawing outside the canvas
        x = constrain(x,0,width-1);
        y = constrain(y,0,height-1);
        colorValue = constrain(colorValue,color(0,0,0),color(255,255,255));
}
}
