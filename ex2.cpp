/******************************************************************************

                              Online C++ Compiler.
               Code, Compile, Run and Debug C++ program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

#include <iostream>

using namespace std;

int
main ()
{
  int n, i, j, a[20][20];
  cin >> n;
  n = n - 1;

  for (i = 0; i <= n; i++)
    {
      for (j = 0; j <= n; j++)
	{
	  cin >> a[i][j];
	}
    }

  cout << endl;

  for (i = 0; i <= n; i++)
    {
      for (j = 0; j <= n; j++)
	{
	  cout << a[i][j] << " ";
	}
      cout << endl;
    }


  return 0;
}
