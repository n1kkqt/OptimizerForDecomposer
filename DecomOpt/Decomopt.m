global names f txts txtsopt scrsz btnopt;
scrsz = get(groot,'ScreenSize');
f = figure('Name','Optimization','Resize','off','MenuBar','None','Position',[scrsz(3)/5 scrsz(4)/5 scrsz(3)/4 scrsz(4)/9]);
names='Файл до оптимизации: ';
btnopen = uicontrol('Style','pushbutton','Parent',f,...
        'Position',[scrsz(3)/75 scrsz(4)/15 scrsz(3)/20 scrsz(4)/30],...
        'String','Open', 'Callback', {@btnopenclick});
btnopt = uicontrol('Style','pushbutton','Parent',f,...
        'Position',[scrsz(3)/75 scrsz(4)/35 scrsz(3)/20 scrsz(4)/30],...
        'String','Optimize!', 'Callback', {@btnoptclick},'Visible','off');
txts = uicontrol('Style','text','Parent',f,...
        'Position',[scrsz(3)/75+scrsz(3)/20 scrsz(4)/14.5 scrsz(3)/4 scrsz(4)/50],...
        'HorizontalAlignment','left','String',names);
txtsopt = uicontrol('Style','text','Parent',f,...
        'Position',[scrsz(3)/75+scrsz(3)/20 scrsz(4)/34.5 scrsz(3)/4 scrsz(4)/50],...
        'HorizontalAlignment','left','String','Файл после оптимизации: ','Visible','off');
btnopendec = uicontrol('Style','pushbutton','Parent',f,...
        'Position',[scrsz(3)/4.8 scrsz(4)/55 scrsz(3)/25 scrsz(4)/12],...
        'String','Decomposer', 'Callback', {@btnopendecclick});    

function btnoptclick(~, ~)
global names txtsopt;
    name1 = AllToOpt(names);
    clipboard('copy',name1);
    if length(name1)>15
            name1=['...' name1(length(name1)-15:length(name1))];
    end
    set(txtsopt, 'String', ['Файл после оптимизации: ' name1]);
    
import java.awt.Robot;
import java.awt.event.*;
robot=Robot();
system('Decomp-X2.exe &');
robot.keyPress(KeyEvent.VK_CONTROL);
robot.keyPress(KeyEvent.VK_O);
robot.keyRelease(KeyEvent.VK_O);
robot.keyRelease(KeyEvent.VK_CONTROL);

robot.delay(600);

robot.keyPress(KeyEvent.VK_CONTROL);
robot.keyPress(KeyEvent.VK_V);
robot.keyRelease(KeyEvent.VK_V);
robot.keyRelease(KeyEvent.VK_CONTROL);

robot.keyPress(KeyEvent.VK_ENTER);
robot.keyRelease(KeyEvent.VK_ENTER);
end

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

function btnopendecclick(~, ~)
system('Decomp-X2.exe &');
end