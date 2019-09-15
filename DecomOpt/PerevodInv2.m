function name1 = PerevodInv2(D, an, an_, name)
%% начало
fileID=fopen('testsmb.shc','rt','n','windows-1251');
str=[];
while ~feof(fileID)
   str= [str fgetl(fileID)];
end
fclose(fileID);

Nb=find(str=='Б');
Nb1=Nb(1);
Bname=str(Nb1:Nb1+4);
NY=find(str==''); %Y
Yname=str(NY(1)-8:NY(1)+3);

s=Nb1-9;
while str(s)<='9' && str(s)>='0'
        s=s-1;
end
strfin=str(1:s);

probel=strfin(s-2);


b4=probel+4;
b5=probel+5;
b6=probel+6;
b7=probel+7;
Yname(1)=probel+1;



strfin=[];
h=size(D,2);
f=D(D(:,1)==an(find(an_==max(an_))),10:h);
fl=length(f);

strfin=probel+fl;%%%
for j=1:fl %вывели логическую функцию блока
        strfin=[strfin num2str(f(j))];
    end 
strfin=[strfin probel+1];
F=strfin;




%не помню, выводятся ли они в результате нашей проги оптимизации, лучше
%удалю -i и 0 отдельно тут
kol_vo_vh=length(find(an<0));
if find(D(:,1)<=0)
    D(find(D(:,1)<=0),:)=[];
end
if find(an<=0)
    an_(find(an<=0))=[];
    an(find(an<=0))=[];   
end
%length(an)
strfin=[strfin probel probel probel (probel+length(an)+1) probel probel probel (probel+length(an)+2) probel probel probel probel (probel+1) 'I' repmat(probel,[1 13]) (probel+kol_vo_vh)  probel probel probel];
 
b56=b6;
if length(an)==1
    Bname=Bname(1:length(Bname)-1);
    b56=b5;
end
%% середина
%find(an==D(:,1))
for i=length(an):-1:1
    Nn=an(i);
    
    Dn=D(find(D(:,1)==Nn),1:9);
    a=Dn(6:9);
    if Dn(3)==0 %учтена инверсия
        a=[a(3) a(4) a(1) a(2)];
    end
    if Dn(5)==0
        a=[a(2) a(1) a(4) a(3)];
    end
    
    strfin=[strfin (probel+4)];
    for j=1:4 %вывели логическую функцию блока
        strfin=[strfin num2str(a(j))];
    end 
    b=b4;%NJ(find(Nk==Dn(1)));%тот самый символ перед блоком
    if Dn(1)>=10
        b=b5;
    end
    bb=b56;
    if (length(an)-i+1)>=10
        bb=b7; 
    end
    if i==length(an)
        B1name=[b 'Bl_' num2str(Dn(1))];
    end
    strfin=[strfin b 'Bl_' num2str(Dn(1)) bb Bname num2str(length(an)-i+1) Yname]; %J
    if Dn(2)>0
        b=b4;%NJ(find(Nk==Dn(2)));%тот самый символ перед блоком
        if Dn(2)>=10
            b=b5;
        end
        n1name=[ b 'Bl_' num2str(Dn(2)) probel probel '' probel probel probel ];%J
    else
        if Dn(2)==-1
            n1name=['I' probel probel '' probel probel probel ];
        else
            g=''; % 'K'
            n1=Dn(2);
            while n1~=-2
                n1=n1/2;
                g=g+1;
            end
            n1name=['' 'I' g probel '' probel probel probel ];% 'K'
        end
    end
    if Dn(4)>0
        b=b4;% NJ(find(Nk==Dn(4)));%тот самый символ перед блоком
        if Dn(4)>=10
            b=b5;
        end
        n0name=[ b 'Bl_' num2str(Dn(4)) probel probel];%J
    else
        if Dn(4)==-1
            n0name=['I' probel probel ];
        else
            g=''; % 'K'
            n0=Dn(4);
            while n0~=-2
                n0=n0/2;
                g=g+1;
            end
            n0name=['' 'I' g probel];% 'K'
        end
    end
    strfin=[strfin n0name  n1name];% 'K' 'J'
    
end

%% окончание

strfin=[strfin F 'O' repmat(probel,[1 9]) (probel+1) probel probel probel B1name repmat(probel,[1 6])];

% % % s=find(str=='O')-3;
% % % while str(s)<='9' && str(s)>='0'
% % %         s=s-1;
% % % end
% % % strfin(length(strfin))=[];
% % % strfin=[strfin str(s:length(str))];
% % % 
% % % if posofns
% % %     strfinparts=str(1:posofns(1));
% % %     if length(posofns)>1
% % %         for i=1:length(posofns)-1
% % %             strfinparts={strfinparts;str(posofns(i):posofns(i+1)) };
% % %             if i==length(posofns)-1
% % %                 strfinparts={strfinparts;str(posofns(i+1):length(str))};
% % %                 break;
% % %             end
% % %         end    
% % %     else
% % %         strfinparts={strfinparts;str(posofns:length(str))};
% % %     end
% % %     strfinparts{2}=strfinparts{2}(2:length(strfinparts{2}));%КОСТЫЛЬ
% % % else
% % %     strfinparts=strfin;
% % % end
name1=[name(1:length(name)-4) '_1.shc'];
fileIDsave=fopen(name1,'w','n','windows-1251');

fprintf(fileIDsave,'%s',strfin);


fclose(fileIDsave);





end

