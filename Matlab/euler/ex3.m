number =  600851475143;
ans=2;
temp = 0;
while number~=1
    while rem(number,ans)==0
        number=number/ans;
    end
    temp = ans;
    while rem(number,temp)~=0 &&number~=1
        temp = temp + 1;
    end
    ans = temp;
    
end
        
        
        