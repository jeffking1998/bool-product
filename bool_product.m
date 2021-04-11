function [out] = bool_product(mt)

out = zeros(size(mt));

[row,column] = size(mt);

for i = 1:row
    for j = 1:column
        out(i,j) = (mt(i,:) * mt(:,j) ) || 0;
    end
end
end
