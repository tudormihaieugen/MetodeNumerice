function A=Metoda_Simpson38;
syms x;
f(x)=input("f(x)=");
pas=input("Nr. pasi=");
if pas/3==1
    disp('Numarul de pasi trebuie sa fie multiplu de 3');
    Metoda_Simpson38;
end

a=input("Capat stanga=");
b=input("Capat dreapta=");
S1=0;
S2=0;
S3=0;
h=(b-a)/pas;

for x=a:3*h:b
    S1=S1+eval(f(x));
end

for x=a+h:3*h:b
    S2=S2+eval(f(x));
end

for x=a+2*h:3*h:b
    S3=S3+eval(f(x));
end

I=(3*h/8)*(3*S1+2*S2+S3-eval(f(a))-eval(f(b)))
