/******************************************************************************

                              Online C++ Compiler.
               Code, Compile, Run and Debug C++ program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

#include <iostream>

using namespace std;

int main()
{
    int n,s=0;
    cin>>n;
    for (int i=1;i<n;i++)
    {
     if ((i % 3==0)||(i % 5==0))
     {
         s=s+i;
     }
    }
    cout<<s;
    return 0;
}
