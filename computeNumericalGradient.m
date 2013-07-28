function numgrad = computeNumericalGradient(J, theta)
% numgrad = computeNumericalGradient(J, theta)
% theta: a vector of parameters
% J: a function that outputs a real-number. Calling y = J(theta) will return the
% function value at theta. 

num = size(theta);
% Initialize numgrad with zeros
numgrad = zeros(num);
num = num(1);
%% ---------- YOUR CODE HERE --------------------------------------
% Instructions: 
% Implement numerical gradient checking, and return the result in numgrad.  
% (See Section 2.3 of the lecture notes.)
% You should write code so that numgrad(i) is (the numerical approximation to) the 
% partial derivative of J with respect to the i-th input argument, evaluated at theta.  
% I.e., numgrad(i) should be the (approximately) the partial derivative of J with 
% respect to theta(i).
%                
% Hint: You will probably want to compute the elements of numgrad one at a time. 

mat = eye(num);
EPSILON = 10^-4;

for i = 1:num
    theta_p = theta + EPSILON * mat(:, i);
    theta_m = theta - EPSILON * mat(:, i);
    numgrad(i) = (J(theta_p) - J(theta_m)) / (2 * EPSILON);
end








%% ---------------------------------------------------------------
end
