function btnopenmatclick(~, ~)
global names txts txtsopt btnopt scrsz t f f2 btnopen btnopenmat;
x=inputdlg({'Number of blocks'},'Input number of blocks');
x0=scrsz(3);%ширина экрана
y0=scrsz(4);%высота
xb=60;%кнопок
yb=25;
if ~isempty(x) && ~isempty(cell2mat(x)) && str2num(x{1})>0
%set(btnopen,'Visible','off');
%set(btnopenmat,'Visible','off');
%set(txts,'Visible','off');
set(f,'Visible','off');
if str2num(x{1})
    rep=[];d=[];a=[];
    for i=1:str2num(x{1})
        rep=[rep;[1 13]];
        d=[d;i];
    end
   x0=scrsz(3);%ширина экрана
    y0=scrsz(4);%высота
    if str2num(x{1})<10
        xf=210;%основного окна
        yf=yb+10+(str2num(x{1})+1)*20;
        if yf>(y0-200)
            yf=300;
            xf=215;
        end
    elseif str2num(x{1})<100
        xf=225; %основного окна
        yf=250;
    else
        xf=235; %основного окна
        yf=450;
    end
    
    
   f2=figure('Position',[(x0-xf)/2 (y0-yf)/2 xf yf],'Resize','off','MenuBar','None','CloseRequestFcn',@closereqmat);
   btnok = uicontrol('Style','pushbutton','Parent',f2,...
        'Position',[1 yf-yb xb yb],...
        'String','OK', 'Callback', {@btnokclick}); 
   btnshow = uicontrol('Style','pushbutton','Parent',f2,...
        'Position',[(xf-xb)/2 yf-yb xb yb],...
        'String','Show', 'Callback', {@btnshowclick});
   btnhelp = uicontrol('Style','pushbutton','Parent',f2,...
        'Position',[xf-xb yf-yb xb yb],...
        'String','Help', 'Callback', {@btnhelpclick});    
   t=uitable(f2,'Position', [1 1 xf yf-yb-10]);%
   set(t,'ColumnWidth',{45 45 20 20 20 20});
   set(t,'ColumnName',{'n_star','n_mlad','a0','a1','a2','a3'});
   %t.ColumnName = {'n_star','n_mlad','a0','a1','a2','a3'};
   %t.ColumnEditable = true;
   set(t,'ColumnEditable',true);
%     for i=1:str2num(x{1})
%         for j=1:6
%             t.Data{i,j}=0;
%         end
%     end
set(t,'Data',zeros(str2num(x{1}),6));
%    mat=t.Data;
%    D=[];
%    for i=1:str2num(x{1})
%         D=[D; str2num(mat{i})];
%    end
%     D=[d D(:,1) ones(str2num(x{1}),1) D(:,2) ones(str2num(x{1}),1) D(:,3:6) ];
    
end

end
end

