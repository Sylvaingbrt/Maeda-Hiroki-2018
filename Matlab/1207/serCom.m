function myserial = serCom(serialProperty,serialValue)
i=1;

portList = seriallist;
while i <= length(portList)
    serialCOM = char(portList(i));
    %arduino_serCom
   myserial =arduino_serCom(serialCOM, serialProperty, serialValue);
    %fprintf(myserial.Status);
    if strcmp(myserial.Status,'open') == 1
        fprintf('ok\n');
        break;
    else
        fprintf("NG\n");
    end
    i=i+1;
end

end

function myserial = arduino_serCom(serialCOM,serialProperty,serialValue)
    try
        fprintf('[try to %s]\n',serialCOM);
        
        %serial port object
        %serial('port','PropertyName',PropertyValue,...);
        myserial = serial(serialCOM, serialProperty,serialValue);
        fprintf('cccccccccccccccc\n');
       % out1 = instrfind(myserial);
       % clear myserial
        %myserial = instrfind;
        fopen(myserial);
        
        fprintf('cccccccccccccccc\n');
        myserial.Status;
       %fprintf(myserial.Status);
        get(myserial);
        rec_time = 10;
        t_start = tic; %ticはストップウォッチ開始
        while myserial.BytesAvailable == 0
           telapsed = toc(t_start);
           if  telapsed > rec_time
               error('cannot make a connection to Arduino\n');
               
           end
        end
        
        startChar = fscanf(myserial);
        if startChar ~= 'A'
            error('Cannot make a connection to Arduino\n');
        end
    catch exception
        fprintf('error\n');
        fclose(myserial);
        exception
    end
end