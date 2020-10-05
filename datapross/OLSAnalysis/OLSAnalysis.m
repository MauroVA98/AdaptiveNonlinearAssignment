load('X.mat')
load('Y.mat')
load('aerocoef.mat')

CX = pross(aerocoef(1:5,1,1000:end),X(1:5,1,1000:end),Y(1,1000:end));
CZ = pross(aerocoef(1:4,2,1000:end),X(1:4,2,1000:end),Y(2,1000:end));
Cm = pross(aerocoef(1:4,3,1000:end),X(1:4,3,1000:end),Y(3,1000:end));

CY = pross(aerocoef(:,4,1000:end),X(:,4,1000:end),Y(4,1000:end));
Cl = pross(aerocoef(:,5,1000:end),X(:,5,1000:end),Y(5,1000:end));
Cn = pross(aerocoef(:,6,1000:end),X(:,6,1000:end),Y(6,1000:end));

function x = pross(A,B,C)
A = squeeze(A);
B = squeeze(B).';
C = C.';


x = zeros(length(A(:,1)),4);
var = (1/(length(B)-length(A(:,1))))*((C-B*A(:,end)).'*(C-B*A(:,end)));
SE = sqrt(var*diag(inv(B.'*B)));
x(:,4) = SE;

for i = 1:length(A(:,1))
    x(i,1) = mean(A(i,:));
    x(i,2) = min(A(i,:));
    x(i,3) = max(A(i,:));
end
end