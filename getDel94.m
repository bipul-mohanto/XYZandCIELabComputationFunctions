% Input : lab1(1 x 3 matrix), lab2(1 x 3 matrix)
% Output : distance
function distance = getDel94( lab1, lab2 )

 delL = lab1(1,1) - lab2(1,1);
 delCab = (lab1(1,2)^2 + lab1(1,3)^2)^0.5 - (lab2(1,2)^2 + lab2(1,3)^2)^0.5;  
 delHab = ((getDelab(lab1,lab2))^2 - delCab^2 - delL^2)^0.5;
    
 sc = 1 + 0.045 *  (lab1(1,2)^2 + lab1(1,3)^2)^0.5;
 sh = 1 + 0.015 *  (lab1(1,2)^2 + lab1(1,3)^2)^0.5;
    
 distance = ((delL^2 +  (delCab/sc)^2 + (delHab/sh)^2))^0.5;