String images_path = "../../assets/images/";
PImage img;
ArrayList<PImage> images = new ArrayList<PImage>();
String filename;

void setup() {

  size(1268, 847);

  for (int i=1; i<26; i++) {
    filename = nf(i, 2);
    img = loadImage(images_path + filename + ".png");
    images.add(img);
  }
  
  for (int i=0; i<25; i++) {
    image(images.get(i), 0, 0);
    textSize(36);
    text("Borough Park:", 100, 700);
    text("Recommended Citi Bike Expansion", 100, 750);
    text(i + 1 + " stations", 100, 800);
    saveFrame("frames/" + i + ".png");
  }

}

void draw() {
  
}