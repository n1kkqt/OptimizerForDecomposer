function name1 = AllToOpt(name)
global txtsopt btnopt;
%функция перевода файла name в матрицу:
c=1;
if size(name,1)==1 %приходит название
    D = Perevod(name);
    if D==0
        set(btnopt,'Visible','off');
        set(txtsopt,'Visible','off');
    end
else %приходит матрица
    D=name;
   [file,path]=uiputfile('*.shc','Save');
   if file
        name=[path file '.shc'];
   else
       c=0;
   end
end

%прописать проверку, что один выход

%функция оптимизации матрицы:
%D=[ 5 1 1 4 1 0 0 0 1;    4 2 1 3 1 0 0 0 1;    3 -8 1 -4 1 0 0 0 1;    2
%-8 1 -4 1 0 0 0 1;    1 -2 1 -1 1 0 0 0 1]; тут все было хорошо
if c~=0
    [D, an, an_] = optim(D);

    %функция вывода матрицы в файл name1:
    if length(an)>1
        name1 = PerevodInv2(D, an, an_,  name);
    end
end
end

