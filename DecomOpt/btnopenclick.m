function btnopenclick(~, ~)
global names txts txtsopt btnopt;
    [filename,pathname] = uigetfile('*.shc');
    name=[pathname filename];
    if filename
        names=name;
        if length(name)>18
            name=['...' name(length(name)-18:length(name))];
        end
        set(txts, 'String', ['Файл до оптимизации: ' name]); 
        set(btnopt,'Visible','on');
        set(txtsopt,'Visible','on');
    else
        set(btnopt,'Visible','off');
        set(txtsopt,'Visible','off');
    end
end