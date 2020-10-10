%Determinarea valorilor si vectorilor proprii. Metoda puterii.
function Metoda_Puterii;
A=input('Matricea A=');
er=input('Eroare=');
pas=input('Numar pasi=');
[m n]=size(A);

if m~=n
    disp('Matricea introdusa nu este patratica.');
	Metoda_Puterii;
end

for i=1:n
    X(i)=1;
end
l(2)=0;
X1=(A^2).*X;
for i=1:n
    l(2)=l(2)+abs(X1(i))^2;
end
l(2)=l(2)^(1/2);

for p=3:pas
    X1=(A^p).*X;
    X=X1/X1(1);
    l(p)=0;
    for i=1:n
        l(p)=l(p)+abs(X1(i))^2;
    end
    l(p)=l(p)^(1/2);
    if abs((l(p)-l(p-1))/l(p-1))<er
        break;
    end
end

p
T=transpose(X);
val_max=(T.*A.*X)/(T.*X)

