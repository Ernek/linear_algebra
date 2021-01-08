% Column vector goes with ; separator for each vector elements 
v0 = [ 1; 3 ]

% Row vectors go with colon (,) or with space in between elements 
v1 = [2 3]
v2 = [ 2, 5 ]

% Sum of two vectors 
v3 = v1 + v2

% Plotting vectors 
figure(2), clf

plot([0 v1(1)], [0, v1(2)], 'b', 'linew',2)
hold on 

plot([0 v2(1)]+v1(1), [0, v2(2)] +v1(2), 'r', 'linew',2)
plot([0 v3(1)], [0, v3(2)], 'k', 'linew',3)

legend({ 'v1'; 'v2'; 'v1+v2'})

% Product of a scalar and a vector 
l = 3
v4 = l*v1


% Dot product between two vectors 

%method 1  (.*) operator multiplies each elements of vector v1 by each element
% of vector 2, --> will give a matrix is v1 is column vector and v2 is a row 
% vector , or a vector is both vectors are row vectors 
% the sum is to some each multiplied elements to obtain the dot product  
v5 =  sum( v1.*v2)

v51 = v0.*v1  % gives matrix 
sum(v51) % gives a vector of m elements (m colum matrix) where each element is 
% the sum of the row-elements of each columns of a matrix (downward sum). 

v52 = v0'.*v1 % gives vector 
sum(v52) % gives dot product of v0 row and v1 row vectors

%method 2
v6 = dot(v1, v2)

%method 3
v7 = v1*v2' 

%method 4
