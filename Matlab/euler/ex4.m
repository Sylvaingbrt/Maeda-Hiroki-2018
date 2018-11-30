  a=9;
  b=9;
  c=9;
  count = 0;
    while (1)
        if count ==0
        number = a*(10^5+1)+b*(10^4+10)+c*(10^3+10^2);
        else
            if count == 1
               number = a*(10^4+1)+b*(10^3+10)+c*(10^2);
            else 
                
                break;
            end
        end
                
        minimum = sqrt(number);
        i=999;
        while minimum <= i

             if rem(number,i)==0
                 answ = number;
                 return;

             end
         i=i-1;
        end
        if c>0
            c=c-1;
        else
            if b<=0
                a=a-1;
                b=9;
                c=9;
            else
            b=b-1;
            c=9;
            end
        end
        if a<=0
            a=9;
            b=9;
            c=9;
            count=count +1;
        end
    
    end