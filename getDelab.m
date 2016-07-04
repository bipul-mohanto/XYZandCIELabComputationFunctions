% Input : lab1(1 x 3 matrix), lab2(1 x 3 matrix)
% Output : distance
function distance = getDelab( lab1, lab2 )

distance =((lab1(1,1) - lab2(1,1))^2 + (lab1(1,2) - lab2(1,2))^2 +(lab1(1,3) - lab2(1,3))^2) ^ 0.5;