function A=Gauss;
n=input('Nr. ecuatii=');
A=input('Matricea A=');
B=input('Matricea B=');

for i=2:n                                   %daca elementul A(1,1)=0, schimb liniile intre ele pana cand primul element e nenul
    if A(1,1)==0                            %presupunand ca matricea este introdusa corect
        X=A(1,:);
        A(1,:)=A(i,:);
        A(i,:)=X;
    else
        break;
    end
end

for i=1:n
    if i>1
        for j=1:i-1
            B(i)=B(i)-B(j)*A(i,j);
        	A(i,:)=A(i,:)-A(j,:)*A(i,j);
        end
    end
    if A(i,i)~=0                            %verific daca elementele de pe diagonala principala sunt nenule
        B(i)=B(i)/A(i,i);
        A(i,:)=A(i,:)/A(i,i);  
    else
        A(i,:)=A(i,:)+A(i-1,:);             %daca A(i,i)=0, atunci adun linia i-1 care are valoarea '1' pe pozitia A(i-1,i-1) si in rest 0
        A(:,i)=A(:,i)+A(:,i-1)/A(i,i-1);    %apoi adun coloana i-1 pentru a avea valoarea '1' pe pozitia A(i,i)
    end
end

for i=n-1:-1:1
    for j=n:-1:i+1
        B(i)=B(i)-B(j)*A(i,j);
        A(i,:)=A(i,:)-A(j,:)*A(i,j);
    end
end
B
 