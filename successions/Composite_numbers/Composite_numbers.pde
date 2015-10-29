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
  int n = 10; 
  int nth = nth (n);
  println (nth );
  int [] seq = n_array(n);
  printArray(seq);
}