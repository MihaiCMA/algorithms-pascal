/******************************************************************************

                              Online C++ Compiler.
               Code, Compile, Run and Debug C++ program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

#include <iostream>
using namespace std;


class sarpe
{
    public:
    int x,y;
    char c;
};

int init(int m,char a[20][20])
{
    for (int i=0;i<m;i++)
    {
        for (int j=0;j<m;j++)
        {
          a[i][j]='*';  
        }
    }
}

int afisare(int m,char a[20][20])
{
 cout<<endl;
 for (int i=0;i<m;i++)
    {
        for (int j=0;j<m;j++)
        {
          cout<<a[i][j]<<' ';  
        }
        cout<<endl;
    }
}

int target(char a[20][20])
{
    int x,y;
    srand (time(NULL));
    do
    {
        x=rand() % 4;y=rand() % 4;
    }while(a[x][y]=='A');
    a[x][y]='@';
}

int set(int n,sarpe corp[20],char a[20][20])
{
    a[corp[0].x][corp[0].y]='*';
switch(n) 
    {
    case 'w' : corp[0].x--;
             break;
    case 'a' : corp[0].y--;
             break;
    case 's' : corp[0].x++;
             break;
    case 'd' : corp[0].y++;
             break;
    }
    
    if (a[corp[0].x][corp[0].y]=='@')
    {
        a[corp[0].x][corp[0].y]='A';
        target(a);
    } else a[corp[0].x][corp[0].y]='A';
}


int main()
{
    int m=5;
    sarpe corp[20];
    corp[0].x=0;corp[0].y=0;
    char n,a[20][20];
    init(m,a);
    a[corp[0].x][corp[0].y]='A';
    cin>>n;
    target(a);
    afisare(m,a);
    while (n!='0')
    {
        set(n, corp, a);
        afisare(m,a);
        cin>>n;
    }
    return 0;
}




