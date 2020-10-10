function A=Jacobi;
n=input('Nr. ecuatii=');
A=input('Matricea A=');
B=input('Matricea B=');
pas=input('nr pasi=');

for i=1:n  
    A(i,:)=A(i,:)/A(i,i);
    X(i)=0;
end

for p=1:pas
    for i=1:n
    	k=[1:(i-1) (i+1):n];
    	X(i)=(B(i)-A(i,k)*X(k)')/A(i,i);
    end
end
X

