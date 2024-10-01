%% ENGS 22; Lab 3 - Prelab
% Sep 17th, 2024
% Bob B Moriasi

%% This function will calculate the resistance of two resistors in parallel
function Rp = rpar(R1, R2)
Rp = R1.*R2./(R1 + R2);
end

%% Demonstration
a = rpar(10, 10)
b = rpar(20, 20)
c = rpar(1, 1000)