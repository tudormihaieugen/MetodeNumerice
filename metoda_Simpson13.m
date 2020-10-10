function A=Metoda_Simpson13;
syms x;
f(x)=input("f(x)=");
pas=input("Nr. pasi=");
if mod(pas,2)==1
    disp('Numarul de pasi trebuie sa fie par');
    Metoda_Simpson13;
end

a=input("Capat stanga=");
b=input("Capat dreapta=");
S1=0;
S2=0;
h=(b-a)/pas;

for x=a:2*h:b
    S1=S1+eval(f(x));
end

for x=a+h:2*h:b
    S2=S2+eval(f(x));
end

I=(h/3)*(2*S1+4*S2-eval(f(a))-eval(f(b)))
