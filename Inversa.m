%Sa se calculeze inversa unei matrice folosind adjuncta.

function matrice=Inversa;               %se numeste functia
n=input("Ordinul matrice=");            %se introduce ordinul matricei
A=input("Matricea A=");                 %se introduce matricea de la tastatura

if det(A)==0                            %se verifica daca matricea A este inversabila
    disp("Determinantul matricei este nul. Dati alta matrice.");
    Inversa;
end

A=transpose(A);                         %se scrie transpusa matricei A
Adj=A;                                  %se copiaza in variabila Adj matricea A

for i=1:n                               %se parcurge matricea pe i linii si j coloane
    for j=1:n
        linii=[1:(i-1) (i+1):n];        %se noteaza cu "linii", respectiv "coloane" pozitiile elementelor care formeaza
        coloane=[1:(j-1) (j+1):n];      %matricea B dupa eliminarea liniei i si coloanei j
        B=A(linii,coloane);             %se copiaza in B matricea respectiva
        Adj(i,j)=(-1)^(i+j)*det(B);     %se calculeaza adjuncta matricei A
    end
end
A=Adj/det(A)                            %se calculeaza inversa si se afiseaza