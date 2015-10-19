class abundant_object 
{
  color hue = 100;
  int sum_of_div (int n )
  {
      int cont = 0;
     for ( int i = 1 ; i < n ; i ++)
     {
       if ( n % i == 0)
         cont += i; 
     }
     return cont;    
  }
   int [] toArray(int n) {
    int[] seq = new int[n];
    for (int i=0; i<n; i++)
      seq[i] = compute(i+1);
    return seq;
  }
  int compute ( int n )
  {
     int cont = 0;
     int number = 0;
     while (true)
     {
       number++;
       int divisors = sum_of_div (number);
       if ( divisors > number )
       {
            cont ++;
       }
       if (cont == n)
         break;
     }
     return number;
  }
  int[] sumDivArray ( int n )
  {
    int [] div = new int[n];
    for ( int i = 0 ; i < n ; i ++ )
    {
      div[i] = sum_of_div(compute(i+1));
    }
    return div;
  }
  void display ( int num )
  {
     int terms = num;
     int abundants[][] = new int[2][terms];
     abundants[0] = toArray(terms);
     abundants[1] = sumDivArray ( terms);
     println (abundants[0]);
     println (abundants[1]);
     
     float wth = 0;
     for (int i = 0 ; i < terms; i ++)
       wth+= abundants[1][i];
     float x=0;
     if ( num < 3 )
       wth *= 3;
     for (int i = 0 ; i < terms; i ++)
     {
       x += map (abundants[1][i]/2, 0, wth, 0, width);
     //  println (x );
       float radious =map(abundants[0][i], 0, wth, 0, width);
       ellipse ( x ,radious/2, radious, radious);
       //float y = 2 * radious + map (abundants[i][0]/2, 0, wth, 0, 1000);
       float y = radious + map(abundants[1][i]/2, 0, wth, 0, width);
       //ellipse ( x ,y, abundants[i][0]/2, abundants[i][0]/2);
       radious =  map(abundants[1][i], 0, wth, 0, width);
       ellipse ( x ,y, radious, radious);
       x +=  map (abundants[1][i]/2, 0, wth, 0, width);
       //println (x );
     }
  }
  void displayOne (int num) 
  {
      int e;
      float radio;
      float radio_sum;
      //text ("hola", 200, 200);
      if (sum_of_div(num) >(num) )
      {
        println("abundant");
        e = 500 / (sum_of_div(num)*2);
        println (num);
        radio =num * e;
        radio_sum =sum_of_div (num) * e ;
        fill ( hue, 100, map (radio, 0 , radio_sum, 0 , 100));
        ellipse ( 500 / 2 , radio /2 , radio, radio);
        fill ( hue, 100 , map (radio_sum, 0, radio_sum, 0, 100));
        ellipse ( 500 / 2 , radio + radio_sum/2 , radio_sum, radio_sum);
      }  
      else
      {
        println("Not abundant");
        e = 500 / (num*2);
        println (num);
        radio =num * e;
        radio_sum =sum_of_div (num) * e ;
        fill ( hue, 100, map (radio, 0 , num, 0 , 100));
        ellipse ( 500 / 2 , radio /2 , radio, radio);
        fill ( hue, 100 , map (radio_sum, 0, num, 0, 100));
        ellipse ( 500 / 2 , radio + radio_sum/2 , radio_sum, radio_sum);
      }
  }
}