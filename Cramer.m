%Sa se rezolve folosind metoda lui Cramer sistemul de ecuatii liniare cu n
%ecuatii si n necunoscute.
%Se intializeaza functia Cramer, se dau:
%-numarul de ecuatii ale sistemului (care este egal cu nr. de necunoscute)
%-matricea sistemului notata cu A
%-matricea termenilor liberi notata cu B
%Se verifica daca determinantul matricei sistemului este nenul. Daca este
%nul, atunci se afiseaza un mesaj corespunzator. Daca este nenul se
%continua algoritmul:
%-Se copiaza in matricea C elementele matricei A
%-Se copiaza pe coloana i a matricei C elementele din matricea B
%-Se calculeaza elementele matricei solutiilor X
%-Se afiseaza matricea X astfel rezultata



function fct=Cramer;
n=input('Nr. ecuatii=');
A=input('Matricea sistemului=');
B=input('Matricea termenilor liberi=');

if(det(A)==0)
    disp("Sistemul este nedeterminat. Dati alt sistem");
    Cramer;
end

for i=1:n
    C=A;
    C(:,i)=B;
    X(i)=det(C)/det(A);
end
X
