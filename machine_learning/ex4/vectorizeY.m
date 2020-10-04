function yVec = vectorizeY(y,outputsNum)
m = length(y);
yVec = zeros(m,outputsNum);
for i=1:m,
    yVec(i,y(i)) = 1;
end
end