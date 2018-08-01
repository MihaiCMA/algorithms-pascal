/******************************************************************************

                              Online C++ Compiler.
               Code, Compile, Run and Debug C++ program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

#include <iostream>

using namespace std;

int main()
{
    long int f1=0,f2=1,f=0,s=0;
    while (f2<4000000)
    {
        f=f1+f2;f1=f2;f2=f;
        if (f % 2==0)
        {
            s=s+f2;
        }
    }
    cout<<s;
    return 0;
}
