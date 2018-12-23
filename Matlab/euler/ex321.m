num =0;
i = 1;
sumAns=0;
count = 1;
x=0;
while i <= 40
    %num = exchangeM(i,num);
    num = num+ count*2+1 ;
    %fprintf("%d\n",num);
   %if 1==triangle_number(num)
    %while (try_i)^2 <= num*2
        x= round(sqrt(2*num));
            if 2*num == x*(x+1)
                sumAns = sumAns + count;
                fprintf("%d\n",count);
                i=i+1;
                
            end
           % end
  
    count = count + 1;
end
fprintf("%d\n",sumAns);
    

