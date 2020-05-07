% convert into binary target for problem finger 6 class
% by Md Sah Nov 2019
function T = getbintarget(A)
T(length(A),10)=0;

for i=1:length(A)
    if (A(i) == '0')
        T(i,1)=1;
    elseif (A(i) == '1')    
        T(i,2)=1;
    elseif (A(i) == '2')    
        T(i,3)=1;
    elseif (A(i) == '3')    
        T(i,4)=1;
    elseif (A(i) == '4')    
        T(i,5)=1;
    elseif (A(i) == '5')    
        T(i,6)=1;
    elseif (A(i) == '6')    
        T(i,7)=1;
    elseif (A(i) == '7')    
        T(i,8)=1;
    elseif (A(i) == '8')    
        T(i,9)=1;
    elseif (A(i) == '9')    
        T(i,10)=1;
    end

    
end