function A=Aprox_Patrate;
x=[-3 -2 -1 0 1 2 3];
y=[13 9 8 6 4 -2 -7];
n=length(x);
m=3;

if length(x)~=length(y)
    disp('Vectorul x si vectorul y nu au acelasi numar de valori.');
    Aprox_Patrate;
end

for k=1:(2*m+1)
	s(k)=0;
	for i=1:n
        s(k)=s(k)+(x(i))^(k-1);
    end   
end

for k=1:(m+1)
	b(k)=0;
	for i=1:n
        b(k)=b(k)+y(i)*(x(i))^(k-1);
	end
end

for i=1:(m+1)
	for j=1:(m+1)
        a(i,j)=s(i+j-1);
	end
end
pol=inv(a)*(b')
