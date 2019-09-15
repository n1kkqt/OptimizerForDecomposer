function A=Inve( A )
% инверсия выходной последовательности конкретного блока
           for d=10:length(A)
                if A(d)==0
                    A(d)=1;
                elseif A(d)==1
                    A(d)=0;
                end
           end
end

