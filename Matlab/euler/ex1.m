i=0;
ans=0;
for i = 0:999
    if(rem(i,3)==0)
      ans=ans+i;
    end
    if(rem(i,3)~=0&&rem(i,5)==0)
        ans=ans+i;
    end
end

