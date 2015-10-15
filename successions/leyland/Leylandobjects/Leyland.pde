class Leyland{
 
  int pow(int n, int p) //special pow 
  {
    if(p==0) return 1;
      
    else if ( p % 2 == 1 )
      return n * pow(n,p-1);
    int a = pow ( n , p/2);
    return a * a;
  }
  
  IntList compute(int n)
  {
     IntList enesimo;
     if (n>13)
      n=13;
    v=new IntList();
    enesimo= new IntList();
    for(int i=0;i<n;i++)
      for(int j=0;j<=n-i;j++)
        {
            int m = ( pow(i+2,j+2) + pow(j+2,i+2) ); 
            if(! v.hasValue(m) )
              v.append(m);
        }
     //println(v);
     v.sort();
     //println(v);
     for(int i=0;i<n;i++)
        enesimo.append(v.get(i));
     return enesimo;
    
  }
  
  void display(int n)
  {
    IntList lay =compute(n);
    IntList layr = compute(n);
    layr.sortReverse();
    
    for(int i=0;i<lay.size();i++)
    {
      float a = map (layr.get(i),lay.get(0),layr.get(0),lay.get(0),width+width/4);
      float b = map (lay.get(i),lay.get(0),layr.get(0),0,255);
      fill(b,0,0);
      noStroke();
      ellipse(width/2,height/2,a,a);
  }
  
  
}