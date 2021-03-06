function [x,lambda]=sub_powmeth(A,x0,tol,maxit)
%该函数用于实现狭义的幂法，与反幂法相对
x=x0;
z=x/norm(x,inf);
x=A*z;
lambda=z'*A*z/(z'*z);
for k=(1:maxit)
    z=x/norm(x,inf);
    x=A*z;
    tmp=lambda;
    lambda=z'*A*z/(z'*z);
    if abs(lambda-tmp)<tol*lambda
        break;
    end
end
end