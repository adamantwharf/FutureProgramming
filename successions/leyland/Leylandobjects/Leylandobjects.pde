Leyland leyland;
int value = 0; 
boolean key;
 int pow(int n, int p) //special pow 
 {
   if(p==0) return 1;
      
   else if ( p % 2 == 1 )
   return n * pow(n,p-1);
   int a = pow ( n , p/2);
   return a * a;
 }
 
void setup() {
  size(700,700);
  colorMode(HSB, 360, 100, 100);
  leyland = new Leyland();
  //noLoop();
}

void draw() {
  background(10);
  //leyland.display(10);
  //leyland.barChart(10);
  leyland.lineChart(12);
  println(leyland.compute(13));
  leyland.sethue(value);
  leyland.posy(mouseY);
  leyland.posx(mouseX);
   leyland.change();
}

void mouseMoved() {
  value = (value + 1) % 360;
}

void keyReleased()
{
   leyland.change(); 
}