abundant_object sequence;
void setup()
{
  size (1000,1000);
  
  sequence = new abundant_object();
 
}
int num = 1;
void draw ()
{
  colorMode (HSB, 360, 100, 100);
  background(90);
  sequence.displayOne(num);

  
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      num ++;
     
    } else if (keyCode == DOWN) {
      num --;
    }
    clear();
  }
}