function A=Metoda_Richardson;
syms x;
f(x)=input("f(x)=");
n1=input("Nr. pasi 1=");
n2=input("Nr. pasi 2=");
if n1==n2
    disp('Pas 1 trebuie sa fie diferit de pas 2');
    Metoda_Richardson;
end

a=input("Capat stanga=");
b=input("Capat dreapta=");
S1=0;
S2=0;
h1=(b-a)/n1;
h2=(b-a)/n2;

for x=a:h1:b
    S1=S1+eval(f(x));
end

for x=a:h2:b
    S2=S2+eval(f(x));
end

I1=(h1/2)*(2*S1-eval(f(a))-eval(f(b)));
I2=(h2/2)*(2*S2-eval(f(a))-eval(f(b)));
I=((n2/n1)^2*I2-I1)/((n2/n1)^2-1)
