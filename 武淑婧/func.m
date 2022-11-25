function dydt=func(t,y,T1,T2,a,b,c,F,R1,R2,L,R3,R4,R5,C1,C2,M,d,e) 
%y=[y(1),y(2),y(3)]，对应x，y，z
%t代表时间
dydt=zeros(3,1);
%复制动态方程
dydt(1)=y(1)*(y(1) - 1)*(T2 - F*c*y(2) + F*c*e*y(2)*y(3));
dydt(2)=y(2)*(y(2) - 1)*(F*c*y(1) - R2*y(3) + F*e*y(3) + L*d*y(3) + M*e*y(3) + M*c*y(1)*y(3) - F*c*e*y(1)*y(3) - M*c*e*y(1)*y(3));
dydt(3)=y(3)*(y(3) - 1)*(R5 - R3 + R4*y(2) + C1*d*y(2) + C2*e*y(2) - M*e*y(2) - T2*b*y(1) - M*c*y(1)*y(2) + M*c*e*y(1)*y(2));
end
