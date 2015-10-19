abundant_object sequence;
void setup()
{
  size (500,500 );
  
  sequence = new abundant_object();
 
}
int num = 12;
void draw ()
{
  colorMode (HSB, 360, 100, 100);
  background(90);
  sequence.display(num);

  
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