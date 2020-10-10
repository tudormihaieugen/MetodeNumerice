%Rezolvarea unui sistem de ecuatii liniar folosind metoda Gauss-Seidel
function A=Gauss_Seidel;            %se denumeste functia
A=input('Matricea A=');             %se introduce de la tastatura matricea sistemului A
B=input('Matricea B=');             %se introduce de la tastatura matricea termenilor liberi B
pas=input('nr pasi=');              %se introduce de la tastatura un numar de pasi
[m n]=size(A);                      %se copiaza in variabilele m si n numarul de linii si de coloane din matricea A

if m~=n                             %se verifica daca matricea este patratica
	disp('Matricea introdusa nu este patratica.');
	Gauss_Seidel;                   %in caz contrar, se afiseaza un mesaj corespunzator si se revine la introducerea de date noi
end

for i=1:n                           %se verifica conditia de convergenta
	S=0;
	for j=[1:(i-1) (i+1):n]
        S=S+abs(A(i,j)/A(i,i));     %se calculeaza suma din conditia de convergenta
    end
    if S>=1                         %daca suma calculata este supraunitara, atunci nu se poate aplica metoda
        disp('Conditia de convergenta nu este respectata.');
        Gauss_Seidel;               %se afiseaza un mesaj corespunzator si se revine la introducerea de date noi
    end
    X(i)=0;                         %se porneste cu solutia initiala introdusa sub forma vectorului nul
end
AUX=X;                              %variabila Y se va folosi pentru a memora valorile vectorului X la pasul p-1
Y=AUX;                              %variabila AUX se va folosi drept variabila auxiliara de memorare a vectorului X la pasul p
for p=1:pas
	for i=1:n
        k=[1:(i-1)];                %in variabila k se memoreaza indicii elementelor de la 1 la i-1
        S1=A(i,k)*X(k)';            %se calculeaza separat prima suma din formula
        l=[(i+1):n];                %in variabila l se memoreaza indicii elementelor de la i+1 la n
        S2=A(i,l)*Y(l)';            %se calculeaza separat a doua suma din formula
        X(i)=(B(i)-S1-S2)/A(i,i);   %se introduce formula folosind cele 2 sume calculate anterior
    end
    Y=AUX;                          %Y va lua valoarea memorata de AUX la pasul anterior
    AUX=X;                          %AUX va lua valoarea memorata de X la pasul curent
end
X                                   %se afiseaza vectorul de solutii X
 