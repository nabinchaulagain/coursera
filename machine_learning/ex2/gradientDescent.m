theta = function gradientDescent(X,y,theta,alpha,epochs)
costHistory = zeros(epochs);
m = length(y);
grad = zeros(length(theta));
for i = 1:epochs,
    costHistory(i) = costFunction(theta,X,y);
    grad = (1/m) * (X'* (sigmoid(X*theta)- y));
    theta = theta - alpha * grad;
    costHistory(i) = costFunction(theta,X,y);
end
plot([1:1:epochs],costHistory);