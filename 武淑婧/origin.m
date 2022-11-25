% C1>C2 F1>F2 R2>R1 R3>R4
%the 1st line
C1,C2,C3,C4,R1,R2,R3,R4,F1,F2,M,a,b,c
for i=0.2
    figure(1)
    set(0,'defaultfigurecolor','w')
    [t,y]=ode45(@(t,y)fn(t,y,C1,C2,C3,C4,R1,R2,R3,R4,F1,F2,M,a,b,c),[0 50],[i 0.2 0.2]);
    plot3(y(:,1),y(:,2),y(:,3),'r+','linewidth',1);
    hold on
end
%the 2nd line
N=100,Nph=5,Npl=20,Ndh=5,Ndl=10,U=100,Uph=5,Upl=20,Udh=5,Udl=10,I=100,Iph=5,Ipl=20,Idh=5,Idl=10,Cph=100,Cpl=80,Cdh=10,Cdl=5,Rpd=5,Fpd=5,P=30,t=0.05
for j=0.2
    [t,y]=ode45(@(t,y)fn(t,y,C1,C2,C3,C4,R1,R2,R3,R4,F1,F2,M,a,b,c),[0 50],[0.2 j 0.2]);
    plot3(y(:,1),y(:,2),y(:,3),'b-','linewidth',1);
    hold on
end
%the 3rd line
N=100,Nph=5,Npl=20,Ndh=5,Ndl=10,U=100,Uph=5,Upl=20,Udh=5,Udl=10,I=100,Iph=5,Ipl=20,Idh=5,Idl=10,Cph=100,Cpl=80,Cdh=10,Cdl=5,Rpd=5,Fpd=5,P=30,t=0.05
for k=0.2
    [t,y]=ode45(@(t,y)fn(t,y,C1,C2,C3,C4,R1,R2,R3,R4,F1,F2,M,a,b,c),[0 50],[0.2 0.2 k]);
    plot3(y(:,1),y(:,2),y(:,3),'g--','linewidth',1);
    axis([0 1 0 1 0 1])
    set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
    xlabel('x');ylabel('y');zlabel('z');
    grid on
    hold on
    legend({'Rp=100','Rp=150','Rp=200'},'location','northeast');
    title('图5药品销售收入的影响','FontWeight','bold','position',[0 0 -0.2]);
end


%3d figure
clear;
N=100,Nph=5,Npl=20,Ndh=5,Ndl=10,U=100,Uph=5,Upl=20,Udh=5,Udl=10,I=100,Iph=5,Ipl=20,Idh=5,Idl=10,Cph=100,Cpl=80,Cdh=10,Cdl=5,Rpd=5,Fpd=5,P=30,t=0.05
for i=0.1:0.2:1
    for j=0.1:0.2:1
        for k=0.1:0.2:1
        figure(2)
        [t,y]=ode45(@(t,y)fn(t,y,C1,C2,C3,C4,R1,R2,R3,R4,F1,F2,M,a,b,c),[0 50],[i j k]);
        plot3(y(:,1),y(:,2),y(:,3),'linewidth',1);
        hold on
        end
    end
end
view([45 10])
grid on
axis([0 1 0 1 0 1])
set(gca,'XTick',[0:0.2:1],'YTick',[0:0.2:1],'ZTick',[0:0.2:1])
%set(gca,'XDir','reverse')
xlabel('x');
ylabel('y');
zlabel('z');
title('图1 演化n次结果','FontWeight','bold','Position',[0 0 -0.15]);