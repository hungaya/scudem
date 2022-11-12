function Np = model(t, N)
    % Coefficients
    % N1
    r1 = 1;
    K1 = 1;
    b12 = 1;
    c1 = 1;
    
    % N2
    r2 = prey_r2(t);
    K2 = 1;
    b21 = 1;
    c2 = 1;
    
    % Human - Np
    rp = 1;
    Kp = 1;
    
    Np = [
      r1*N(1) * (1 - N(1)/K1 + b12*N(2)/K1 + c1*N(3)/K1);
      r2*N(2) * (1 - N(2)/K2 + b21*N(1)/K2 + c2*N(3)/K2);
      rp*N(3) * (1 - N(3)/Kp)
    ];
end
