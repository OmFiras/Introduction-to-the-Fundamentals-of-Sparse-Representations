function x = omp(CA, b, k)
% OMP Solve the sparse coding problem via OMP
%
% Solves the following problem:
%   min_x ||b - CAx||_2^2 s.t. ||x||_0 <= k
%
% The solution is returned in the vector x

% Initialize the vector x
x = zeros(size(CA,2),1);

% TODO: Implement the OMP algorithm
% Write your code here... x = ????;
p=1;
res = b - CA*x;
S = [];
xk = [];

% TODO: Implement the OMP algorithm
% Write you code here... x = ????;
while p<=k
    [~,ind] = max(abs(res'*CA));
    S = [S ind];
    subA = CA(:,S);
    xk = subA\b;
    res = b - subA*xk;
    p = p+1;
end
x(S) = xk;



end

