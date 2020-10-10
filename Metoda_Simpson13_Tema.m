%Metoda Simpson 1/3 pentru calcul de integrale
function A=Metoda_Simpson13;                        %se denumeste functia
syms x;                                             %se stabileste ca x este argumentul functiei f
f(x)=x^2*log(x);                                    %se declara functia f
n=10;                                               %se initializeaza numarul de intervale
if mod(n,2)==1                                      %se verifica daca numarul de intervale este par
    disp('Numarul de pasi trebuie sa fie par');     %daca este impar se afiseaza un mesaj corespunzator
    return;                                         %si se iese din rularea programului
end
a=3;                                                %se initializeaza valoarea din stanga a intervalului  
b=7;                                                %se initializeaza valoarea din dreapta a intervalului
S1=0;                                               %se initializeaza prima suma cu 0
S2=0;                                               %se initializeaza a doua suma cu 0
h=(b-a)/n;                                          %se calculeaza valoarea diviziunii intervalului [a,b]

for x=a:2*h:b                                       %se calculeaza suma valorilor cu indici impari ale lui f(x)
    S1=S1+eval(f(x));                               %in punctele in care a fost divizat intervalul [a,b]
end
for x=a+h:2*h:b                                     %se calculeaza suma valorilor cu indici pari ale lui f(x)
    S2=S2+eval(f(x));                               %in punctele in care a fost divizat intervalul [a,b]                                        
end

I1=(h/3)*(2*S1+4*S2-eval(f(a))-eval(f(b)))          %se calculeaza si se afiseaza integrala cu Formula simpson 1/3 din teorie
format long;                                        %se foloseste formatul 'long' pentru o precizie mai mare
I2=integral(@(x) x.^2.*log(x),a,b)                  %se calculeaza si se afiseaza integrala folosind functia 'integral'
abs(I2-I1)                                          %se afiseaza eroarea absoluta