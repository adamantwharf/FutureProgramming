int n = 20*20;
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
 // printArray (arr);
 // println ( arr.size() );
  int row =0, col=0; 
  if ( s%2 == 1){
    base = sqrt(width * height / n);
    h = base;
    row = col = (int)sqrt ( n );
  }
  
  if ( s % 2 == 0){
    base = (float)width / arr.get(s/ 2 - 1);
    h= (float)height / arr.get( (s / 2));
    col =  arr.get(s/2 -1 ) ;
    row = arr.get ( s/2);
 }
 int cont=1;
  for ( int i = 1; i <= row ; i ++)
  {
    xpos = 0;
    for ( int j = 1 ; j <= col ; j ++ )
    {
      fill (0);
      if ( ! is_comp(cont)){ 
         fill (100,50, map (cont , 0 , n , 0 , 100));
         println ( "no " + i );
       }
      rect ( xpos, ypos, base, h);
      cont ++;
      xpos = xpos + base;
    }
    ypos = ypos + h;
  }
}