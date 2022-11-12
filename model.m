function Np = model(t, N)
    % Coefficients
    % N1
    r1 = 1.2;
    K1 = 2;
    b12 = 0.5;
    c1 = 2;
    
    % N2
    r2 = -0.8;
    K2 = 5;
    b21 = 0.3;
    c2 = 2;
    
    % Human - Np
    rp = 1;
    Kp = 2;
    
    Np = [
      r1*N(1) * (1 - N(1)/K1 + b12*N(2)/K1 + c1*N(3)/K1);
      r2*N(2) * (1 - N(2)/K2 + b21*N(1)/K2 + c2*N(3)/K2);
      rp*N(3) * (1 - N(3)/Kp)
    ];
end
