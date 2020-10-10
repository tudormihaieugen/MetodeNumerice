%Metoda secantei
function sol=secanta;
x(1)=input('x(1)=');
x(2)=input('x(2)=');
tol=input('toleranta=');
k=2;

while (abs(fct(x(k)))>tol)&(k<100)
	x(k+1)=x(k-1)-(x(k)-x(k-1))/(fct(x(k))-fct(x(k-1)))*fct(x(k-1));
	k=k+1;
end
	disp('solutia este:');
	disp(x(k));