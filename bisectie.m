%Metoda bisectiei
function sol=bisectie;
a=input('a=');
b=input('b=');
toleranta=input('toleranta=');

if(fct(a)~=0)&(fct(b)~=0)
    while b-a>toleranta
        x=(b+a)/2;
        if fct(x)~=0
            if fct(a)*fct(x)<0
                b=x;
            else a=x;
            end
        else break
        end
    end
elseif fct(a)==0;
    x=a;
else x=b;
end
x