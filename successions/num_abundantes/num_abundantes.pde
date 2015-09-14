long sum_of_div ( long n )
{
  long sum = 0;
  for ( int i = 1; i < n ; i ++)
    if ( n % i == 0 )
      sum = sum + i;
  return sum;    
}
void setup ()
{
   long n = 11;
   long sum = sum_div(n);
   if ( suma > n )
     println ("It is an abundant number");
     else 
     println ("It is not an abundant number");
}
