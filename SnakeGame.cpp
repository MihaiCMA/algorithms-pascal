/******************************************************************************

                              Online C++ Compiler.
               Code, Compile, Run and Debug C++ program online.
Write your code in this editor and press "Run" button to compile and execute it.

*******************************************************************************/

#include <iostream>
using namespace std;
int p=0;

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

int afisare(int m,char a[20][20], sarpe corp[20])
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
cout<<"You have "<<p<<" points."<<endl;
for (int k=p;k>=0; k--)
        {
            cout<<corp[k].x<<" "<<corp[k].y<<" "<<corp[k].c;
            cout<<endl;
        }
}

int target( char a[20][20])
{
    int x,y;
    srand (time(NULL));
    do
    {
        x=rand() % 5;y=rand() % 5;
    }while(a[x][y]=='A');
    a[x][y]='@';
}

int set(int n, sarpe corp[20],char a[20][20])
{
    int x,y;
    x=corp[0].x;y=corp[0].y;
    a[corp[0].x][corp[0].y]='*';
    switch(n) 
    {
    case 'w' : x--;
             break;
    case 'a' : y--;
             break;
    case 's' : x++;
             break;
    case 'd' : y++;
             break;
    }
    
    if (a[x][y]=='@')
    {
        p++;
        for (int k=p;k>0; k--)
        {
            corp[k].x=corp[k-1].x;
            corp[k].y=corp[k-1].y;
            corp[k].c=corp[k-1].c+1;
        }
        corp[0].x=x;corp[0].y=y;
        a[corp[0].x][corp[0].y]='A';
        target(a);
    } else 
    {
     a[x][y]='A';
     for (int k=p;k>0; k--)
        {
            corp[k].x=corp[k-1].x;
            corp[k].y=corp[k-1].y;
            corp[k].c=corp[k-1].c+1;
        }
     corp[0].x=x;corp[0].y=y;
    }
        
    }


int main()
{
    int m=5, p=0;
    sarpe corp[20];
    corp[0].x=0;corp[0].y=0;corp[0].c='A';
    char n,a[20][20];
    init(m,a);
    a[corp[0].x][corp[0].y]='A';
    target( a);
    afisare(m,a, corp); 
    cin>>n;
    while (n!='0')
    {
        set(n, corp, a);
        afisare(m,a, corp);
        cin>>n;
    }
    return 0;
}




