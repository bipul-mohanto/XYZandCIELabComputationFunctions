% Input : 
% 'xyz' and 'white' are 1 x 3 matrices
% output : 
% 'lab' is the returned 1 x 3 matrix containing L* a* and b*

function lab = xyz2lab( xyz,white )

xnorm = xyz(1,1) / white(1,1);
ynorm = xyz(1,2) / white(1,2);
znorm = xyz(1,3) / white(1,3);

% VALUE OF L*
if( ynorm > 0.008856)
lab (1,1) = (116 * (ynorm)^0.33333333) - 16;
else
lab (1,1) = 903.3 * (ynorm);
end

% VALUE OF a*
lab(1,2) = 500 * (f(xnorm) - f(ynorm));

% VALUE OF b*
lab(1,3) = 200 * (f(ynorm) - f(znorm));




