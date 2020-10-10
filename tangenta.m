function sol=tangenta;
 
a=input('a=');
b=input('b=');
k=0;

if(fct(a)~=0)&(fct(b)~=0)
     while k<1000
          x=b-fct(b);
           if fct(x)~=0
               b=x;
           else break
           end
        k=k+1;
    end
elseif fct(a)==0;
    x=a;
else x=b;
end
x