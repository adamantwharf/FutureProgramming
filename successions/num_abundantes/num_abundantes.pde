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
   size (1000,1000);
   int terms = 5;
   int[][] abundants = new int[terms][2];
   int cont = 0;
   int number = 0; 
   int wth=0;
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
         wth += divisors;
       }
       if (cont == terms)
         break;
   }

   for ( int i = 0; i < terms ; i ++ )
   {
      println (i + " " + abundants[i][0]+ " Divisors " + abundants[i][1] );
   }
   println ( "wth "+ wth );
   float x=0;
   for (int i = 0 ; i < terms; i ++)
   {
     x += map (abundants[i][1]/2, 0, wth, 0, 1000);
     println (x );
     float radious = map(abundants[i][1], 0, wth, 0, 1000);
     ellipse ( x ,radious/2, radious, radious);
     //float y = 2 * radious + map (abundants[i][0]/2, 0, wth, 0, 1000);
     float y = radious + map (abundants[i][0]/2, 0, wth, 0, 1000);
     //ellipse ( x ,y, abundants[i][0]/2, abundants[i][0]/2);
     radious = map(abundants[i][0], 0, wth, 0, 1000);
     ellipse ( x ,y, radious, radious);
     x +=  map (abundants[i][1]/2, 0, wth, 0, 1000);
     println (x );
   }
   
 }