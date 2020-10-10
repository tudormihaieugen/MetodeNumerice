%Sa se stabileasca numarul de radacini reale ale unei functii si intervalele pe
%care se afla solutiile;
%Se defineste functia Rolle cu x variabila reala;
%se citeste de la tastatura functia;
%se citeste intervalul de definitie al functiei(acesta coincide cu
%intervalul de continuitate al functiei;
%se calculeaza derivata functiei f;
%se rezolva ecuatia f'(x)=0;
%se contorizeaza numarul de solutii;
%daca nu se gasesc solutii, se afiseaza un mesaj corespunzator;
%daca se gasesc solutii, se continua algoritmul: se calculeaza valorile
%lui f(x) in capetele intervalului de definitie, care reprezinta limitele
%functiei;
%se calculeaza f(x) in radacinile lui f'(x);
%se compara semnele a doua valori consecutive(radacini si limite);
%daca semnul variaza (de la - la +, sau invers), atunci se va afisa
%intervalul corespunzator;


function solutie=Rolle;
syms x;
f=input("f(x)=");
a=input("a=");
b=input("b=");
fx=diff(f);
sol=solve(fx==0,x);
nr=numel(sol);

if nr==0
    disp("Dati alta functie.");
    Rolle;
end

nr=nr+2;
Intx(1)=limit(f, x, a); %limita in capatul din stanga
Vx(1)=a;                %capatul din stanga
Intx(nr)=limit(f, x, b);%limita in capatul din dreapta
Vx(nr)=b;               %capatul din dreapta

for i=2:nr-1
    x=sol(i-1);
    Intx(i)=eval(f);
    Vx(i)=sol(i-1);
    if Intx(i-1)*Intx(i)<0
        Vx(i-1:i)
    end
end

i=i+1;
if Intx(i-1)*Intx(i)<0
    Vx(i-1:i)
end
