serialProperty = 'BaudRate';
serialValue = 9600;
fprintf("setup arduino\n");
%serCom

hf = figure('name','imput data');

myserial = serCom(serialProperty,serialValue);
cir = 1;
con = 0;
lastCon = 0;
while cir ==1
    if strcmp(get(hf,'currentcharacter'),'1')
        con = 1; %"LED";
    elseif strcmp(get(hf,'currentcharacter'),'2')
        con = 2;%"buzzer";
    elseif strcmp(get(hf,'currentcharacter'),'0')
        con = 0;
        cir = 0;
    end
    if con~=lastCon
        fprintf(myserial,'%d',con);
        disp(con);
        lastCon = con ;
    end
   % fprintf(myserial,'%d',con);
   figure(hf)
   drawnow
end
fprintf(myserial,'%d',con);
fclose(myserial);
delete(myserial);
clear myserial;
close(hf);
