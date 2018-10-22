float startX = 0;
float startY = 150;
float endX = 0;
float endY = 150;

void setup()
{
  size(800, 500);
  background(0);
}
void draw()
{
  strokeWeight(random(10));
  int R = (int)(Math.random()*256);
  int G = (int)(Math.random()*256);
  int B = (int)(Math.random()*256);
  stroke(R, G, B);
  while(endX < 800) {
    endX = startX + (int)(Math.random()*9);
    endY = startY + (int)((Math.random()*18)-9);
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}
