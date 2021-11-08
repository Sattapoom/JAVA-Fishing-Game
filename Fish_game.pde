import java.util.Arrays;
Fish fish;
ArrayList<Food> foods;
Integer framecount;
void setup() {
  size(640,320);
  background(255);
  
  fish = new Fish();
  foods = new ArrayList<Food>();
  framecount = 1;
}
void mousePressed() {
  foods.add(new Food(random(0,640),random(0,320),0.8));
}
void draw() {
  frameRate(30);
  fish.drawGame();
  framecount += (int)random(0,2);
  if(framecount%60 == 0){
    foods.add(new Food(random(0,640),random(0,320),0.8));
  }
  
}
