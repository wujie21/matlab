syms x y z T1 T2 a b c F R1 R2 L R3 R4 R5 C1 C2 M d e;
f1=str2sym('x*(x - 1)*(T2 - F*c*y + F*c*e*y*z)');
f2=str2sym('y*(y - 1)*(F*c*x - R2*z + F*e*z + L*d*z + M*e*z + M*c*x*z - F*c*e*x*z - M*c*e*x*z)');
f3=str2sym('z*(z - 1)*(R5 - R3 + R4*y + C1*d*y + C2*e*y - M*e*y - T2*b*x - M*c*x*y + M*c*e*x*y)');
[x,y,z]=solve(f1,f2,f3,x,y,z);