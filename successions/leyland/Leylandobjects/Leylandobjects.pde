Leyland leyland;

 int pow(int n, int p) //special pow 
 {
   if(p==0) return 1;
      
   else if ( p % 2 == 1 )
   return n * pow(n,p-1);
   int a = pow ( n , p/2);
   return a * a;
 }
 
void setup() {
  size(400,400);
  colorMode(HSB, 360, 100, 100);
  leyland = new Leyland();
  noLoop();
}

void draw() {
  background(0);
  leyland.display(12);
}