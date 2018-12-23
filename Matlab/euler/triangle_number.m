function boolean = triangle_number(number)
i=0;
while i < 10000
if number == i*(i+1)/2
    
    boolean = 1;
    return;
end

i=i+1;

end
boolean = 0;
end