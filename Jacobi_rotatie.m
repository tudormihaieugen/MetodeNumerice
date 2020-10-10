function A=Jacobi_rotatie;
A=input('Matricea A=');
[m n]=size(A);

if m~=n
    disp('Matricea introdusa nu este patratica.');
	Jacobi_rotatie;
end

for i=1:n
    for j=1:n
        if i~=j
            if A(i,j)~=A(j,i)
                disp('Matricea introdusa nu este simetrica.');
                Jacobi_rotatie;
            end
        end
    end
end

for k=1:100
max=0;
for i=1:n
    for j=i+1:n
    	if abs(A(i,j))>max
            max=abs(A(i,j));
            p=i;
            q=j;
        end
    end
end

fi=atan(2*A(p,q)/(A(p,p)-A(q,q)))/2;
R=eye(n);
R(p,p)=cos(fi);
R(q,q)=cos(fi);
R(p,q)=-sin(fi);
R(q,p)=sin(fi);
R2=eye(n);
R2(p,p)=cos(-fi);
R2(q,q)=cos(-fi);
R2(p,q)=-sin(-fi);
R2(q,p)=sin(-fi);
A=R2*A*R;
end

