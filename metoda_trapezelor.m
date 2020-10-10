function A=Metoda_Trapezelor;
syms x;
f(x)=input("f(x)=");
pas=input("Nr. pasi=");
a=input("Capat stanga=");
b=input("Capat dreapta=");
S=0;
h=(b-a)/pas;

for x=a:h:b
    S=S+eval(f(x));
end

I=(h/2)*(2*S-eval(f(a))-eval(f(b)))
