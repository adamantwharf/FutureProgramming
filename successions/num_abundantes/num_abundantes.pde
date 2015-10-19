int sum_of_div (int n )
{
     int cont = 0;
     for ( int i = 1 ; i < n ; i ++)
       if ( n % i == 0)
         cont += i;
     return cont;    
}
void setup()
{
   int terms = 12;
   int[][] abundants = new int[terms][2];
   int cont = 0;
   int number = 0; 
   while (true)
   {
       number++;
       int divisors = sum_of_div (number);
       if ( divisors > number )
       {
             abundants[cont][0]=number;
             abundants[cont][1]=divisors;
         //abundants.append (number);
         cont ++;
       }
       if (cont == terms)
         break;
   }

   for ( int i = 0; i < terms ; i ++ )
   {
      println (i + " " + abundants[i][0]+ " Divisors " + abundants[i][1] );
   }
 }