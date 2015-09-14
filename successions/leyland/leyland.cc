#include <iostream>
#include <vector>
#include <algorithm>
#include <set>
using namespace std;


long pow(int n, int p)
{
	  if(p==0) return 1;
	    else return n * pow(n,p-1);
}


long leyland (int n )
{
	set<long> v;
	for (int i=1;i<=n;i++)
		for (int j=1;j<=n;j++)
		{
			long m = (pow(i+1,j+1)+pow(j+1,i+1));;
			v.insert(m);
		}

	vector<long> s (v.begin(), v.end());
  	//sort(v.begin(), v.end());
	//for ( int i =0; i<v.size(); i++)
	//{
	//	cout <<v[i]<<endl;
	//}	
	
  	return s[n-1];

}


int main()
{
	int n; 
	cin>>n;
	cout<<leyland(n)<<endl;

	return 0;

}
