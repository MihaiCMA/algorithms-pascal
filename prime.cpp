#include <iostream>
using namespace std;

int prime(unsigned long long int k)
{
    unsigned long long int i=2;
    while (i<=k/2) 
    {
        if (k%i==0)
        {
         return 0;
         i=k+2;
        }
        i++;
    }
    if (i<k+2)
    {
        return 1;
    }
}

int main()
{
  unsigned long long int n,max=1;
  cin>>n;
 for (unsigned long long int i=2;i<=n/2;i++)
    if ((n%i==0)&&(prime(i)))
     max=i;
  cout<<max;
  return 0;
}
