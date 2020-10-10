function p=trigom(x,y)
if (x>0 && y>0)
p='Cadran 1';
elseif(x<0 && y>0)
p='Cadran 2';
elseif(x<0 && y<0)
p='Cadran 3';
elseif(x>0 && y<0)
p='Cadran 4';
elseif (x==0 && y==0)
p='Origine';
elseif (x==0 && y~=0)
p='punctul se afla pe axa OY';
elseif (x~=0 && y==0)
p='punctul se afla pe axa OX';
end
