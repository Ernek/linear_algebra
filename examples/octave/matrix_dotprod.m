%Code to calculate the product of two matrices using element by element sums 
m1 = randi(9, 4, 6); 
m21 = randi(9, 4, 6);
m2 = m21'
m3 = []
for k = 1:length(m1(:,1))
  for j = 1:length(m1(:,1))
    disp(j)
    a = 0
    for i = 1:length(m1(1,:))
      a += m1(k,i)*m2(i,j)
      disp('yeah')
    end
    m3(k,j) = a
  end
end

%Code to create a for loop to compute dot products between corresponding columns 
m4 = zeros(size(m1,2),1);
% size(m1,2) axis is 2 which means columns , so 6 columns 
% zeros(size(m1,2),1) the 1 means only one column vector of zeros of dimension
% 6 
for i = 1:size(m1,2)
  m4(i) = dot( m1(:,i), m21(:,i) );
end
disp(m4)