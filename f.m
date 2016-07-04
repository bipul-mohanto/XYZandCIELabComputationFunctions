function val=f(x)

if x>0.008856
    val= x^0.333333;
else
     val= 7.787*x + 16/116;
end