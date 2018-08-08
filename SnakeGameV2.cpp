#include <iostream>
using namespace std;
int p=0,m=5,xt,yt;
char n,a[20][20];

class sarpe
{
    public:
    int x,y;
    char c;
};

sarpe corp[20];

int init()
{
    for (int i=0;i<m;i++)
    {
        for (int j=0;j<m;j++)
        {
          a[i][j]='*';  
        }
    }
}

int afisare()
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
cout<<xt<<' '<<yt<<endl;
for (int k=p;k>=0; k--)
        {
            cout<<corp[k].x<<" "<<corp[k].y<<" "<<corp[k].c;
            cout<<endl;
        }
}

bool valid()
{
    bool ok=true;
    for (int k=0;k<=p;k++)
    {
        if ((xt==corp[k].x)&&(yt==corp[k].y))
            ok=false;
    }
    return ok;
}

int target()
{
    srand (time(NULL));
    do
    {
        xt=rand() % 5;yt=rand() % 5;
    }while(valid==false);
    a[xt][yt]='@';
}

int create(int o)
{
    switch(o) 
    {
    case 1 : for (int k=0;k<=p; k++)
                {
                    a[corp[k].x][corp[k].y]='*';
                }
             break;
    case 2 : for (int k=0;k<=p; k++)
                {
                    a[corp[k].x][corp[k].y]=corp[k].c;
                }
             break;
    }
}

int set()
{
    int x,y;
    x=corp[0].x;y=corp[0].y;
    create(1);
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
    
    if ((x==xt)&&(y==yt))
    {
        p++;
        for (int k=p;k>0; k--)
        {
            corp[k].x=corp[k-1].x;
            corp[k].y=corp[k-1].y;
            corp[k].c=corp[k-1].c+1;
        }
        corp[0].x=x;corp[0].y=y;
        create(2);
        target();
    } else 
    {
     for (int k=p;k>0; k--)
        {
            corp[k].x=corp[k-1].x;
            corp[k].y=corp[k-1].y;
            corp[k].c=corp[k-1].c+1;
        }
     corp[0].x=x;corp[0].y=y;
     create(2);
    }
        
    }


int main()
{
    corp[0].x=0;corp[0].y=0;corp[0].c='A';
    init();
    a[corp[0].x][corp[0].y]='A';
    target();
    afisare(); 
    cin>>n;
    while (n!='0')
    {
        set();
        afisare();
        cin>>n;
    }
    return 0;
}
