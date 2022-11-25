T1=0.5;T2=0.013;F=8.86;R1=250;R2=45.45;L=28.66;R3=2840.79;R4=569.16;R5=2604;C1=0.6;C2=17;M=34;a=0.5;b=0.5;c=0.5;d=0.5;e=0.5;
arr=[0.2 0.4 0.6 0.8 1];
for i=1:5
    a=arr(i);
    figure(1)
    subplot(1,5,i)
    [t,y]=ode45(@(t,y)func(t,y,T1,T2,a,b,c,F,R1,R2,L,R3,R4,R5,C1,C2,M,d,e),[0 50],[0.5 0.5 0.5]);
    plot_handles=plot(t,y(:,1),'r*',t,y(:,2),'g<',t,y(:,3),'b+');
    legend(plot_handles,'政府','平台','消费者','Location','best')
    s=['a=',num2str(arr(i))];
    text(0.5,-0.11,s,'sc')
    axis([0 10 0 1])
    hold on
end
%plot3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
%text(0.5,-0.1,'a=0.1','sc')
%grid on
%axis([0 1 0 1 0 1])
%set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
%set(gca,'XDir','reverse')
%xlabel('x');
%ylabel('y');
%zlabel('z');
%title('图1 演化n次结果','FontWeight','bold','Position',[0 0 -0.15]);