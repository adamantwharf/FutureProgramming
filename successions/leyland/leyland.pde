long my_pow(int n, int p)
{
  if(p==0) return 1;
  else return n * my_pow(n,p-1);
}

long layland (int n)
{
  long v = 0 ;
  int count = 0;
   for(int i=0;i<n;i++)
     for(int j=0;j<n;j++)
     {
       long m =my_pow(n+i,n+j)+my_pow(j+n,n+i);
       if(m>v)
       {
           v=m;
           count ++;
       }
       if (count == n)
         return v;
     } 
       
  return -1;
}

void setup()
{
  int n = 1;
  
  println(layland(n+1));
}