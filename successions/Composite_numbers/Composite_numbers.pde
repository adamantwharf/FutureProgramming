int n = 7;
 
IntList arr;
IntList  num_div (int n ){
  arr = new IntList() ;
  for ( int i = 1; i<= n ; i ++)
  {
    if ( n % i == 0)
    arr.append (i);
  }
  return arr;
}
boolean is_comp ( int n ){
  for ( int i = 2; i < n; i ++)
    if ( n % i == 0 )
          return true;
  return false; 
}
int nth ( int n ){
  int cont = 0;
  int num = 1;
  int nth= -1;
  while (true){
    if (cont == n )
      break;
    if ( is_comp (num))
    {
      cont++;
      nth=num;
    } 
    num++;
  }
  return nth;
}
int [] n_array (int n )
{ 
  int arr [] = new int[n];
  for ( int i = 0; i < n ; i ++)
    arr [i]= nth (i+1);
  return arr;
}
void setup (){
  size ( 500, 500);
  int nth = nth (n);
  println (nth );
  int [] seq = n_array(n);
  printArray(seq);
  noLoop(); 
}
void draw()
{
  background (0);
  stroke (250);
  float base=0, h=0 ;
  float xpos=0, ypos = 0; 
  IntList arr = num_div (n);
  int s = arr.size();
  printArray (arr);
  println ( arr.size() );
  if ( s%2 == 1)
  {
    println ( " los divisores son impares ");
    base = sqrt(width * height / n+70);
    h = base;
  }
  if ( s % 2 == 0)
  {
    println ("los divisores son pares");
    base = width * 1.0 / arr.get(s/ 2 - 1);
    println ( 4/3);
    h=height * 1.0 / arr.get( (s / 2));
    println ( " base " + base + "h " + h );
 }
  

  for ( int i = 1; i <= n ; i ++)
  {
    fill (0);
    if ( ! is_comp(i))
     { fill (100,50, map ( i , 0 , n , 0 , 100));
       println ( "no" + i );
     }
    println ( "xpos " + xpos + "ypos " + ypos); 
    rect ( xpos, ypos, base, h);
    if ( xpos < width )
    { xpos = xpos + base;}
      
    if ( xpos == width)
    {
      xpos = 0;
      ypos = ypos + h;
    }
  }
}