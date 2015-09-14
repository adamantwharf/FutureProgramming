int sum_of_div ( int n )
{
  int sum = 0;
  for ( int i = 1; i < n ; i ++)
    if ( n % i == 0 )
      sum = sum + i;
  return sum;    
}
void setup ()
{
   int n = 50;
   int sum = sum_of_div(n);
   int cont = 0;
   int number = 1;
   int[] arr=  new int[n];
   while ( true )
   {
     if ( cont == n )
       break;
     if ( number < sum_of_div(number))
     {
       arr[cont] = number;
       cont ++ ;
     }
     number ++ ;
      
   }
   for ( int i = 0 ; i < cont ; i ++ )
   {
     println ( arr[i] );
   }
}