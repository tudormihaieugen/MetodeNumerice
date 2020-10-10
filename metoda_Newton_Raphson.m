f='x(k)-sin(x(k)+y(k))';
g='y(k)-cos(x(k)-y(k))';
fx='1-cos(x(k)+y(k))';
fy='-cos(x(k)+y(k))';
gx='sin(x(k)-y(k))';
gy='1+sin(x(k)-y(k))';
eroare=input("Eroare acceptata=");
pas=input("Numar de pasi=");
x(1)=input("x1=");
y(1)=input("y1=");
k=1;
while(k<pas)
        numX=eval(g)*eval(fy)-eval(f)*eval(gy);
        numY=eval(f)*eval(gx)-eval(g)*eval(fx);
        numitor=eval(fx)*eval(gy)-eval(fy)*eval(gx);
        x(k+1)=x(k)+numX/numitor;
        y(k+1)=y(k)+numY/numitor;
        k=k+1;
        if(abs(x(k)-x(k-1))<eroare&abs(y(k)-y(k-1))<eroare)
            k=k-1;
            break;
        end
end
x=x(k)
y=y(k)
