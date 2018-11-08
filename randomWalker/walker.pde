class Walker {
int x,y,squareSide,colorValue;
Walker() {
        // Starts at the center of canvas
        x = width/2;
        y = height/2;
        squareSide = 20;
        colorValue = 64;
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
                colorValue += 20;
        } else if (choice == 1) {
                colorValue -= 20;
        }

        // Avoid drawing outside the canvas
        x = constrain(x,0,width-1);
        y = constrain(y,0,height-1);
        colorValue = constrain(colorValue,0,128);
}
}
