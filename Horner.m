%Sa se caute solutiile unei ecuatii polinomiale de grad n printre divizorii
%termenului liber. Functia va fi citita dintr-un fisier.

function sol=Horner;    %se numeste functia
syms x;                 %se defineste variabila x
C = coeffs(fct(x));     %se construieste matricea coeficientilor polinomiali
x0=abs(C(1));           %se memoreaza in variabila x0 termenul liber in modul
k=1;                    %valoarea de intrare a variabilei k este 1

for i=-x0:x0            %se cauta solutiile in intervalul [-x0,x0]
    if mod(x0,i)==0     %se verifica daca i este divizor al lui x0
    	if fct(i)==0    %se verifica daca valoarea functiei in punctul i este nula
            X(k)=i;     %se memoreaza in vectorul X soltiile 
            k=k+1;
        end
    end
end

if k==1                 %daca valoarea lui k nu se modifica, inseamna ca nu s-au gasit solutii si se va afisa un mesaj corespunzator
    disp("Nu exista solutii printre divizorii termenului liber");
else
    X                   %se afiseaza valoarea vectorului solutiilor rezultat
end