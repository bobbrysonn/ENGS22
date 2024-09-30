%% Prelab 3

function Rp = rpar(R1, R2)
% This function will calculate the resistance of two resistors in parallel
% Bob Moriasi, ENGS 22, Sep 30th, 2024

Rp = R1.*R2./(R1 + R2);

end

%% Demonstration
a = rpar(10, 10)
b = rpar(20, 20)
c = rpar(1, 1000)