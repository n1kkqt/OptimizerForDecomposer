function name1 = AllToOpt(name)
global txtsopt btnopt;
%������� �������� ����� name � �������:
c=1;
if size(name,1)==1 %�������� ��������
    D = Perevod(name);
    if D==0
        set(btnopt,'Visible','off');
        set(txtsopt,'Visible','off');
    end
else %�������� �������
    D=name;
   [file,path]=uiputfile('*.shc','Save');
   if file
        name=[path file '.shc'];
   else
       c=0;
   end
end

%��������� ��������, ��� ���� �����

%������� ����������� �������:
%D=[ 5 1 1 4 1 0 0 0 1;    4 2 1 3 1 0 0 0 1;    3 -8 1 -4 1 0 0 0 1;    2
%-8 1 -4 1 0 0 0 1;    1 -2 1 -1 1 0 0 0 1]; ��� ��� ���� ������
if c~=0
    [D, an, an_] = optim(D);

    %������� ������ ������� � ���� name1:
    if length(an)>1
        name1 = PerevodInv2(D, an, an_,  name);
    end
end
end

