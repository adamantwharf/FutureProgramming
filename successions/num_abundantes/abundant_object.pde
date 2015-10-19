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
  void display (int num) 
  {
      int e;
      float radio;
      float radio_sum;
      if (sum_of_div(num) >(num) )
      {
        println("abundant");
        e = 500 / (sum_of_div(num)*2);
        println (e);
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
        println (e);
        radio =num * e;
        radio_sum =sum_of_div (num) * e ;
        fill ( hue, 100, map (radio, 0 , num, 0 , 100));
        ellipse ( 500 / 2 , radio /2 , radio, radio);
        fill ( hue, 100 , map (radio_sum, 0, num, 0, 100));
        ellipse ( 500 / 2 , radio + radio_sum/2 , radio_sum, radio_sum);
      }
  }
}