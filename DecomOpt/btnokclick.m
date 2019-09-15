function btnokclick(~, ~)
global names txts txtsopt btnopt scrsz t f2 f;
mat=get(t,'Data');%t.Data;
sizemat=size(mat,1);
d=[];

d=1:sizemat;
D=mat;%cell2mat(mat);
D=[d' D(:,1) ones(sizemat,1) D(:,2) ones(sizemat,1) D(:,3:6) ];

ff=unique([D(:,2);D(:,4)]);
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
elseif ~isempty(find(ff>sizemat))
    %%message, что не все верно
    set(btnopt,'Visible','off');
    set(txtsopt,'Visible','off');
    msgbox('Заполните таблицу! Если вам нужна помощь, нажмите кнопку Help.','Ошибка');
elseif ~isempty(find(mod(ff(find(ff<-1)),-2)~=0))
    %%message, что не все верно
    set(btnopt,'Visible','off');
    set(txtsopt,'Visible','off');
    msgbox('Заполните таблицу! Если вам нужна помощь, нажмите кнопку Help.','Ошибка');
else
    names=D;
    set(btnopt,'Visible','on');
    set(txtsopt,'Visible','on');
    set(f,'Visible','on');
    close(f2);
    %btnoptclick;%?
end
end

