%Metoda trapezelor pentru calcul de integrale
function A=Metoda_Trapezelor;           %se denumeste functia
syms x;                                 %se stabileste ca x este argument al functiei f
f(x)=input('f(x)=');                    %se declara functia f
n=input('Numarul de intervale');        %se initializeaza numarul de iteratii
a=input('Capatul din stanga=');         %se initializeaza valoarea din stanga a intervalului
b=input('Capatul din dreapta=');        %se initializeaza valoarea din dreapta a intervalului
S=0;                                    %se initializeaza suma cu 0
h=(b-a)/n;                              %se valoarea diviziunii intervalului [a,b]

for x=a:h:b                         
    S=S+eval(f(x));                     %se calculeaza suma tuturor valorilor lui f(x) in punctele
end                                     %in care a fost divizat intervalul [a,b]

I1=(h/2)*(2*S-eval(f(a))-eval(f(b)))    %se calculeaza si se afiseaza integrala folosind formula din teorie
