function D = Perevod(name)

% % % fileID=fopen(name,'rt','n','windows-1251');
% % % 
% % % 
% % % 
% % % str=[];
% % % posofns=[];
% % % while ~feof(fileID)
% % %    str= [str fgetl(fileID)];
% % %    if ~feof(fileID)
% % %        posofns=[posofns; length(str)];
% % %    end
% % % end
% % % fclose(fileID);
% % % 
% % % Nb=find(str=='B');
% % % s=str(Nb(length(Nb))-5);
% % % s1=str(Nb(length(Nb))-2);
% % % if s-1==s1
% % % 
% % % 
% % % Nb=find(str=='Б');
% % % 
% % % D=[]; 
% % % for i=1:length(Nb)
% % %     s=Nb(i)-1;
% % %     while str(s)~='_'
% % %         s=s-1;
% % %     end
% % %     chislo=str(s+1:Nb(i)-2); %номер блока на английском
% % %     chislo1=[];
% % %     for chi=1:length(chislo)
% % %         if chislo(chi)=='_'
% % %             chislo1=[chislo1 '000'];
% % %         elseif chislo(chi)<='9' && chislo(chi)>='0'
% % %             chislo1=[chislo1 chislo(chi)];
% % %         end
% % %       
% % %     end
% % %     N=str2num(chislo1);
% % %     
% % %     
% % %     A=str(s-7:s-4);
% % %     if A(1)<'0' || A(1)>'1'
% % %         A(1)=A(3); A(2)=A(4); %посмотреть, как это выглядит взаправду - двухвходовый блок
% % %     end
% % %     for j=1:4
% % %         if A(j)<='9' && A(j)>='0'
% % %             a(j)=str2num(A(j)); %логическая функция блока, наверное, можно проще
% % %         else
% % %             a(j)=0; %% замена звездочки на 0. Ну... Сойдет
% % %         end
% % %     end
% % %     
% % %     s=6;
% % %     str1=str(Nb(i):Nb(i)+35);
% % %     while str1(s)<='9' && str1(s)>='0'
% % %         s=s+1;
% % %     end
% % %     n=str2num(str1(6:s-1)); %номер блока на русском
% % %     i0=1;i1=1; %без инверсии, она учтена в а
% % %     
% % %     
% % %     
% % % %     num0=find(str1==''); %Y
% % % %     num0=num0(1);
% % %     num0=16;
% % %     if find(str1(num0:num0+12)=='B')%младший
% % %         s=find(str1(num0:num0+12)=='B')+3;
% % %         s=s(1);
% % %         while (str1(num0-1+s)<='9' && str1(num0-1+s)>='0') || str1(num0-1+s)<='_'
% % %             s=s+1;
% % %         end
% % %         foundB=find(str1(num0:num0+12)=='B');
% % %         %n0=str2num(str1(foundB+3+num0-1:s+num0-2));
% % %         
% % %         chislo=str1(foundB+3+num0-1:s+num0-2); %номер блока на английском
% % %         chislo1=[];
% % %         for chi=1:length(chislo)
% % %             if chislo(chi)=='_'
% % %                 chislo1=[chislo1 '000'];
% % %             elseif chislo(chi)<='9' && chislo(chi)>='0'
% % %                 chislo1=[chislo1 chislo(chi)];
% % %             end
% % % 
% % %         end
% % %         n0=str2num(chislo1);
% % %         
% % %         
% % %     else 
% % %         s=find(str1(num0:num0+12)=='I');
% % %         s=s(1);
% % %         if str1(num0+s)<''
% % %             n0=-1;
% % %         else
% % %             g=''; % 'K'
% % %             n0=-2;
% % %             while str1(num0+s)~=g
% % %                 g=g+1;
% % %                 n0=2*n0;
% % %             end
% % %         end
% % % 
% % %     end
% % %     
% % %     num0=num0+s+1;
% % %     
% % %     if find(str1(num0:length(str1))=='B')%старший
% % %         s=find(str1(num0:length(str1))=='B')+3;
% % %         while (str1(num0-1+s)<='9' && str1(num0-1+s)>='0') ||str1(num0-1+s)<='_'
% % %             s=s+1;
% % %         end
% % %         foundB=find(str1(num0:length(str1))=='B');
% % %         %n1=str2num(str1(foundB+3+num0-1:s+num0-2));
% % %         
% % %         chislo=str1(foundB+3+num0-1:s+num0-2); %номер блока на английском
% % %         chislo1=[];
% % %         for chi=1:length(chislo)
% % %             if chislo(chi)=='_'
% % %                 chislo1=[chislo1 '000'];
% % %             elseif chislo(chi)<='9' && chislo(chi)>='0'
% % %                 chislo1=[chislo1 chislo(chi)];
% % %             end
% % % 
% % %         end
% % %         n1=str2num(chislo1);
% % %         
% % %         
% % %     else 
% % %         s=find(str1(num0:length(str1))=='I');
% % %         s=s(1);
% % %         
% % %         if str1(num0+s)<''
% % %             n1=-1;
% % %         else
% % %             g=''; % 'K'
% % %             n1=-2;
% % %             while str1(num0+s)~=g
% % %                 g=g+1;
% % %                 n1=2*n1;
% % %             end
% % %         end
% % %             
% % %             
% % %             
% % %             %n1=-1*2^(str1(num0+s+1)-''+1); %K
% % %         %end
% % %     end
% % %     
% % %     
% % %     
% % %     D=[D; N n1 i1 n0 i0 a];
% % % end
% % % 
% % % else
% % %    %письмо, что два входа.
% % %    msgbox('Пожалуйста, выберите схему с одним выходом!','Ошибка');
% % %    D=0;
% % %    
% % %     
% % % end

i1=1;i0=1;
fileID=fopen(name,'rt','n','windows-1251');

str=[];
posofns=[];
while ~feof(fileID)
   str= [str fgetl(fileID)];
   if ~feof(fileID)
       posofns=[posofns; length(str)];
   end
end
fclose(fileID);
s=1;
D=[];
while s<=length(str)
    
    if str(s)=='B'
        
        A=str(s-5:s-2);
        if A(1)<'0' || A(1)>'1'
            A(1)=A(3); A(2)=A(4); %посмотреть, как это выглядит взаправду - двухвходовый блок
        end
        for j=1:4
            if A(j)<='9' && A(j)>='0'
                a(j)=str2num(A(j)); %логическая функция блока, наверное, можно проще
            else
                a(j)=0; %% замена звездочки на 0. Ну... Сойдет
            end
        end
        s1=s+3;
        while (str(s1)<='9' && str(s1)>='0') || str(s1)=='_'
               s1=s1+1;
        end
        
        chislo=str(s+3:s1-1); %номер блока на английском
        s=s1;
        chislo1=[];
        for chi=1:length(chislo)
            if chislo(chi)=='_'
                chislo1=[chislo1 '000'];
            elseif chislo(chi)<='9' && chislo(chi)>='0'
                chislo1=[chislo1 chislo(chi)];
            end
        end
        N=str2num(chislo1);
        
        while str(s)~='B' && str(s)~='I' && s<length(str)
            s=s+1;
        end
        if s<length(str)
        if str(s)=='B'
            s1=s+3;
            while (str(s1)<='9' && str(s1)>='0') || str(s1)=='_'
                   s1=s1+1;
            end

            chislo=str(s+3:s1-1); %номер младшего блока на английском
            s=s1;
            chislo1=[];
            for chi=1:length(chislo)
                if chislo(chi)=='_'
                    chislo1=[chislo1 '000'];
                elseif chislo(chi)<='9' && chislo(chi)>='0'
                    chislo1=[chislo1 chislo(chi)];
                end
            end
            n0=str2num(chislo1);
        else
            if str(s+1)<''
                n0=-1;
            else
                g=''; % 'K'
                n0=-2;
                while str(s+1)~=g
                    g=g+1;
                    n0=2*n0;
                end
            end
            s=s+1;
        end
        
      
        while str(s)~='B' && str(s)~='I'
            s=s+1;
        end
        
        if str(s)=='B'
            s1=s+3;
            while (str(s1)<='9' && str(s1)>='0') || str(s1)=='_'
                   s1=s1+1;
            end

            chislo=str(s+3:s1-1); %номер старшего блока на английском
            s=s1;
            chislo1=[];
            for chi=1:length(chislo)
                if chislo(chi)=='_'
                    chislo1=[chislo1 '000'];
                elseif chislo(chi)<='9' && chislo(chi)>='0'
                    chislo1=[chislo1 chislo(chi)];
                end
            end
            n1=str2num(chislo1);
        else
            if str(s+1)<''
                n1=-1;
            else
                g=''; % 'K'
                n1=-2;
                while str(s+1)~=g
                    g=g+1;
                    n1=2*n1;
                end
            end
            s=s+1;
        end
        
        D=[D; N n1 i1 n0 i0 a];
        end
    end
   s=s+1; 
end


end

