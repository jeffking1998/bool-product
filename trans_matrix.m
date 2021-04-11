n = length(m0);

temp = zeros([size(m0),n]);

for i = 1: n
    tm = m0;
    for j = 1:i
        tm = bool_product(tm);
    temp(i,:,:) = tm;
    end
end


res  = zeros(size(m0));

for i = 1:n
    for j = 1:n
        res(i,j) = sum(temp(:,i,j)) || 0;
    end
end

disp(res);