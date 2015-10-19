
// Super abstract class Sequence
import java.util.Arrays;

abstract class Sequence {
  /**
   * The sequence author
   */
  abstract String author();
  
  /**
   * The sequence description
   */
  abstract String description();
  
  /**
   * Computes the nth sequence term
   */
  abstract int compute(int n);
  
  /**
   * Returns the first n seq terms as an array.
   */
  int [] toArray(int n) {
    int[] seq = new int[n];
    for (int i=0; i<n; i++)
      seq[i] = compute(i+1);
    return seq;
  }
  
  /**
   * Returns the first n seq terms as a string.
   * Sequence may then simply be printed as: println(sequence.toString(n))
   */
  String toString(int n) {
    return Arrays.toString(toArray(n));
  }
  
  // All display functions must scale the canvas properly
  
  /**
   * Display n seq terms as you wish
   */
  abstract void display(int n);
   
  /**
   * Display n seq terms as a bar chart: https://en.wikipedia.org/wiki/Bar_chart
   * Warning: Should be implemented here in the super class!
   */
  void barChart(int n) {
    //TODO misssing implementation
  }
  
  /**
   * Display n seq terms as a line chart: https://en.wikipedia.org/wiki/Line_chart
   * Warning: Should be implemented here in the super class!
   */
  void lineChart(int n) {
    //TODO misssing implementation
  }
  
  /**
   * Display n seq terms as a curve firring: https://en.wikipedia.org/wiki/Curve_fitting
   * Hint: refer to the section 'Curves' here: https://processing.org/reference/
   * Warning: Should be implemented here in the super class!
   */
  void curveFitting(int n) {
    //TODO misssing implementation
  }
}
class Abundant extends Sequence{
  String author()
  {
     return "noname"; 
  }
  String description()
  {
    return "something";
  }
  
  int sum_of_div (int n )
  {
     int cont = 0;
     for ( int i = 1 ; i < n ; i ++)
       if ( n % i == 0)
         cont += i;
     return cont;
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
  void display()
  {
     int terms = 5;
     int abundants[][] = new int[2][terms];
     abundants[0] = toArray(terms);
     abundants[1] = sumDivArray ( terms);
     float wth = 0;
     for (int i = 0 ; i < terms; i ++)
       wth+= abundants[1][i];
     float x=0;
     for (int i = 0 ; i < terms; i ++)
     {
       x += map (abundants[1][i]/2, 0, wth, 0, 1000);
     //  println (x );
       float radious = map(abundants[1][i], 0, wth, 0, 1000);
       ellipse ( x ,radious/2, radious, radious);
       //float y = 2 * radious + map (abundants[i][0]/2, 0, wth, 0, 1000);
       float y = radious + map (abundants[0][i]/2, 0, wth, 0, 1000);
       //ellipse ( x ,y, abundants[i][0]/2, abundants[i][0]/2);
       radious = map(abundants[0][i], 0, wth, 0, 1000);
       ellipse ( x ,y, radious, radious);
       x +=  map (abundants[1][i]/2, 0, wth, 0, 1000);
       //println (x );
     }
  }
}