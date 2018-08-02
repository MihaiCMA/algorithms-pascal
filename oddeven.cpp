/******************************************************************************

                              Online C++ Compiler.
               Code, Compile, Run and Debug C++ program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

#include <iostream>

using namespace std;

int faction(int k)
{
    if (k % 2==0)
     return 1;
    else
     return 0;
}

int main()
{
    int k;
    cin>>k;
    if (faction(k))
    {
        cout<<"Even";
    } else
    cout<<"Odd";
    return 0;
}

