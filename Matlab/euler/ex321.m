num =0;
i = 0;
sumAns=0;
count = 1;
x=0;
%{
boost3 = 100000000;
boostcount3=1;
boostnum3=0;
boostx3=0;


boost2 = 1000000;
boostcount2=1;
boostnum2=0;
boostx2=0;

boost = 1000;
boostcount=1;
boostnum=0;
boostx=0;
%}
temp = 0;
while i <= 40
    %{
    %*******************************************************************
    boostnum3 = (((10*boost3*boostcount3*2+1)+3)*5*boost3*boostcount3);
    while boostx3*(boostx3+1)>2*boostnum3
        boostx2= boostx3;
        boostcount2 = boostcount3*10*boost3/boost2;
        count= boostcount3*10*boost3;
        num = boostnum3;
        boostx3 = round(sqrt(2*boostnum3));
        
        if boostx3*(boostx3+1)==2*boostnum3
            sumAns = sumAns + count;
                fprintf("a%d\n",count);
                i=i+1;
                break;
        end
        boostcount3 =boostcount3 + 1;
        boostnum3 = (((10*boost3*boostcount3*2+1)+3)*5*boost3*boostcount3);
    end
    %*******************************************************************
    boostnum2 = (((10*boost2*boostcount2*2+1)+3)*5*boost2*boostcount2);
    while boostx2*(boostx2+1)>2*boostnum2
        boostx = boostx2;
        boostcount = boostcount2*10*boost2/boost;
        num = boostnum2;
        boostx2 = round(sqrt(2*boostnum2));
        count= boostcount2*10*boost2;
        if boostx2*(boostx2+1)==2*boostnum2
            sumAns = sumAns + count;
                fprintf("a%d\n",count);
                i=i+1;
                break;
        end
        boostcount2 =boostcount2 + 1;
        boostnum2 = (((10*boost2*boostcount2*2+1)+3)*5*boost2*boostcount2);
    end
    %*******************************************************************
    
    
    
    boostnum = (((10*boost*boostcount*2+1)+3)*5*boost*boostcount);
    while boostx*(boostx+1)>2*boostnum
        count = boostcount*10*boost;
        num = boostnum;
        boostx = round(sqrt(2*boostnum));
        if boostx*(boostx+1)==2*boostnum
            sumAns = sumAns + count;
                fprintf("a%d\n",count);
                i=i+1;
                break;
        end
        boostcount =boostcount + 1;
        boostnum = (((10*boost*boostcount*2+1)+3)*5*boost*boostcount);
    end
    %*****************************************************************
    %}
    num = temp*(temp+1)/2;
    
    %num = exchangeM(i,num);
    %num = (3+(count*2+1))*count/2;
    %fprintf("%d\n",num);
   %if 1==triangle_number(num)
    %while (try_i)^2 <= num*2
       % x= round(sqrt(2*num));
        count = -1+sqrt(1+num);
            if num == (4+2*count)*count/2&&count==round(count)
                %count = -1+sqrt(1+num);
                sumAns = sumAns + count;
                fprintf("i = %d, count = %d, num = %d\n",i, count, num);
                
                i=i+1;
                
                %x=x+1;
                %x=count*temp;
               %{
                if temp ==3
                    temp=2;
                else
                    temp=3;
                end
                %}
               % boostcount=boostcount + 1;
            elseif 2*num >x*(x+1)
      %          boostcount3=boostcount3+1;
       %         x=x+1;
                 
            end
              %//fprintf("i=%d : %d\n",i,num);
        %      boostx=x;
         %     boostx2=x;
          %    boostx3=x;
           % end
  
    temp = temp + 1;
end
fprintf("sum = %d\n",sumAns);
    

