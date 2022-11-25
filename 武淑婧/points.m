function [outputArg1,outputArg2] = points(inputArg1,inputArg2)
%定义符号变量 
syms x y z T1 T2 a b c F R1 R2 L R3 R4 R5 C1 C2 M d e;
for x=0:1
  for y=0:1
    for z=0:1
      %格式化输出各个均衡点的特征值
      fprintf("(%d,%d,%d):%s\n",x,y,z,char([(2*x - 1)*(T2 - F*c*y + F*c*e*y*z),(2*y - 1)*(F*c*x - R2*z + F*e*z + L*d*z + M*e*z + M*c*x*z - F*c*e*x*z - M*c*e*x*z),(2*z - 1)*(R5 - R3 + R4*y + C1*d*y + C2*e*y - M*e*y - T2*b*x - M*c*x*y + M*c*e*x*y)]))
    end
  end
end
end

