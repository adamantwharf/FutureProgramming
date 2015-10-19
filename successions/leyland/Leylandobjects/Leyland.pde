class Leyland{
 
  color hue; 
  int py;
  int px;
  float c, d;
  void posy(int p)
  {
      py = p-height/2;
  }
  
  void change()
  {
      float tmp = c;
      c =d;
      d = tmp;
    
  }
  
  void posx(int p)
  {
      px = p-width/2;
  }
  Leyland()
  {
     sethue(180); 
  }
  
  Leyland (int h)
  {
     sethue(h); 
  }
  
  void sethue(color h)
  {
     hue = h; 
  }
  
  IntList compute(int n)
  {
     IntList enesimo, v;
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
      float a = map (layr.get(i),lay.get(0),layr.get(0),lay.get(0),width);
      float b = map (lay.get(i),lay.get(0),layr.get(0),0,100);
      fill(hue,100,b);
      c=a;
      d=b;
      //noStroke();
      stroke(hue,100,30);
      float x = width/2+px/(c/d);
      float y = height/2+py/(c/d);
      
      if(y>height)
       y=height;
       else if(y<0)
       y=0;
      if(x>width)
        x=width;
        else if(x<0)
        x=0;
      
      ellipse(x,y,a,a);
  }
  
  
  }
}