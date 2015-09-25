//Better testing 
ArrayList<IntList>  abundants = new ArrayList <IntList>();
IntList tmp = new IntList();
int sum_of_div ( int n )
{
  tmp.append(n);
  int sum = 0;
  for ( int i = 1; i < n ; i ++)
    if ( n % i == 0 )
    {
      sum = sum + i;
      tmp.append(i);
    }
  return sum;    
}
// a comment to test git
void setup ()
{
   PImage image = loadImage("stallman.jpg"); 
   size( 610,400);
     background(0,50,50);
   int n = 10;

   int cont = 0;
   int number = 1;

   while ( true )
   {
     if ( cont == n )
       break;
     tmp = new IntList();
     int sumDiv = sum_of_div(number);
     if ( number < sumDiv)
     {
       tmp.append(sumDiv);
       abundants.add(tmp);
       cont ++ ;
     }
     number ++ ;
      
   }
   for ( int i = 0 ; i < cont ; i ++ )
   {
      println (i + " " + abundants.get(i) );
   }
   float scale = 3;
   float x = 0;
   for ( int xi = 0 ; xi < 6 ; xi ++ )
   {
     
     x += abundants.get(xi).get(abundants.get(xi).size() - 1 )/2.0 * scale;
     float y = abundants.get(xi).get(0)/2.0 * scale;
     fill(255,255,200);
     noStroke();
     ellipse(x,y, abundants.get(xi).get(0) * scale ,abundants.get(xi).get(0) * scale);
     y += abundants.get(xi).get(0)/2.0* scale;
     
     for ( int i = 1 ; i < abundants.get(xi).size(); i ++ )
     {
       int size = abundants.get(xi).size();
       float a = map(abundants.get(xi).get(i),abundants.get(xi).get(1) 
                 ,abundants.get(xi).get(size-2)*1.1,0,255);
       fill(255,255-a,255-a); 
       noStroke();
       y += abundants.get(xi).get(i)/2.0 * scale;
       println(y);
       ellipse(x, y , abundants.get(xi).get(i)* scale,abundants.get(xi).get(i)* scale);
       y += abundants.get(xi).get(i)/2.0 * scale;  
     }
     x += abundants.get(xi).get(abundants.get(xi).size() - 1 )/2.0 * scale;
   }
}