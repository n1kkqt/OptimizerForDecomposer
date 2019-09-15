function btnshowclick(~, ~)
global names txts txtsopt btnopt scrsz t ;
mat=get(t,'Data');%t.Data;
sizemat=size(mat,1);
d=[];

d=1:sizemat;
D=mat;%cell2mat(mat);
D=[d' D(:,1) ones(sizemat,1) D(:,2) ones(sizemat,1) D(:,3:6) ];

f=unique([D(:,2);D(:,4)]);
if (sum(sum(mat(:,3:6)==0))+sum(sum(mat(:,3:6)==1)))==numel(mat)
    set(btnopt,'Visible','off');
    set(txtsopt,'Visible','off');
    msgbox('Заполните таблицу! Если вам нужна помощь, нажмите кнопку Help.','Ошибка');
elseif sum(sum(mat(:,1:2)==0))>0
    set(btnopt,'Visible','off');
    set(txtsopt,'Visible','off');
    msgbox('Заполните таблицу! Если вам нужна помощь, нажмите кнопку Help.','Ошибка');
elseif isempty(find(D(:,6:9)~=0))&& isempty(find(D(:,6:9)~=1))
        %%message, что не все верно
    set(btnopt,'Visible','off');
    set(txtsopt,'Visible','off');
    msgbox('Заполните таблицу! Если вам нужна помощь, нажмите кнопку Help.','Ошибка');
elseif ~isempty(find(f>sizemat))
    %%message, что не все верно
    set(btnopt,'Visible','off');
    set(txtsopt,'Visible','off');
    msgbox('Заполните таблицу! Если вам нужна помощь, нажмите кнопку Help.','Ошибка');
elseif ~isempty(find(mod(f(find(f<-1)),-2)~=0))
    %%message, что не все верно
    set(btnopt,'Visible','off');
    set(txtsopt,'Visible','off');
    msgbox('Заполните таблицу! Если вам нужна помощь, нажмите кнопку Help.','Ошибка');
else
    
    [D, an, an_]=Itable(D);
    %[file,path]=uiputfile('*.shc','Save');
    if length(an)>1
    acpath=dir;
    acpath=acpath.folder;
    file='shownfile';
   if file
        name2=[file];
        name1 = PerevodInv2(D, an, an_, name2); %%прописать жесткий путь до?..
        fullpath=[acpath '\' name1];
    clipboard('copy',fullpath);
    
    import java.awt.Robot;
    import java.awt.event.*;
    robot=Robot();
    system('Decomp.exe &');
    robot.keyPress(KeyEvent.VK_CONTROL);
    robot.keyPress(KeyEvent.VK_O);
    robot.keyRelease(KeyEvent.VK_O);
    robot.keyRelease(KeyEvent.VK_CONTROL);

    robot.delay(1000);

    robot.keyPress(KeyEvent.VK_CONTROL);
    robot.keyPress(KeyEvent.VK_V);
    robot.keyRelease(KeyEvent.VK_V);
    robot.keyRelease(KeyEvent.VK_CONTROL);

    robot.keyPress(KeyEvent.VK_ENTER);
    robot.keyRelease(KeyEvent.VK_ENTER);
   
   end
    else
        set(btnopt,'Visible','off');
        set(txtsopt,'Visible','off');
        msgbox({'Таблица некорректна! Скорее всего, присутствует обратная связь.' ,'Если вам нужна помощь, нажмите кнопку Help.'},'Ошибка');
      
    end
 end
end

