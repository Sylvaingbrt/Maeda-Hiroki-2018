value = 1;
value_next = 1;
ans = 0;
temp=0;
while value_next < 4000000
    if value_next < 4000000&&rem(value_next,2)==0
        ans = ans + value_next;
    end
    temp=value_next;
    value_next=value+value_next;
    value = temp;
end