format long g
xl1=out.xl1;
xl2=out.xl2;
xl3=out.xl3;
xf1=out.xf1;
xf2=out.xf2;
xf3=out.xf3;
e1=out.e1;
e2=out.e2;
e3=out.e3;
ep1=out.ep1;
ep2=out.ep2;
ep3=out.ep3;
T=0:0.01:15;
% figure(1)
% hold on
% grid on
% 
% plot3(xf1(:,1)',xf2(:,1)',xf3(:,1)',':','LineWidth',2)
% plot3(xf1(:,2)',xf2(:,2)',xf3(:,2)',':','LineWidth',2) 
% plot3(xf1(:,3)',xf2(:,3)',xf3(:,3)',':','LineWidth',2)
% plot3(xf1(:,4)',xf2(:,4)',xf3(:,4)',':','LineWidth',2)
% plot3(xf1(:,5)',xf2(:,5)',xf3(:,5)',':','LineWidth',2)
% plot3(xf1(:,6)',xf2(:,6)',xf3(:,6)',':','LineWidth',2)
% plot3(xl1(:,1)',xl2(:,1)',xl3(:,1)','Color','#0072BD','LineWidth',3)
% plot3(xl1(:,2)',xl2(:,2)',xl3(:,2)','Color','#D95319','LineWidth',3)
% plot3(xl1(:,3)',xl2(:,3)',xl3(:,3)','Color','#A2142F','LineWidth',3)
% t=zeros(8,3);
% for i = 1:5
%     plot3(xl1(i*(length(T)-1)/10,1:2),xl2(i*(length(T)-1)/10,1:2),xl3(i*(length(T)-1)/10,1:2),'c','LineWidth',3)
%     plot3(xl1(i*(length(T)-1)/10,2:3),xl2(i*(length(T)-1)/10,2:3),xl3(i*(length(T)-1)/10,2:3),'c','LineWidth',3)
%     plot3(xl1(i*(length(T)-1)/10,1:2:3),xl2(i*(length(T)-1)/10,1:2:3),xl3(i*(length(T)-1)/10,1:2:3),'c','LineWidth',3)
%     t(i,:)=[xl1(i*(length(T)-1)/10,2),xl2(i*(length(T)-1)/10,2),xl3(i*(length(T)-1)/10,2)];
% end
% str='t = 4 s';
% text(t(1,1),t(1,2),t(1,3),str,'FontSize',10)
% str='t = 8 s';
% text(t(2,1),t(2,2),t(2,3),str,'FontSize',10)
% str='t = 12 s';
% text(t(3,1),t(3,2),t(3,3),str,'FontSize',10,'HorizontalAlignment','right')
% str='t = 16 s';
% text(t(4,1),t(4,2),t(4,3),str,'FontSize',10,'HorizontalAlignment','right')
% str='t = 20 s';
% text(t(5,1),t(5,2),t(5,3),str,'FontSize',10,'HorizontalAlignment','right')
% 
% 
% legend('follower1','follower2','follower3','follower4','follower5','follower6','leader1','leader2','leader3')
% xlabel('x1(t)')
% ylabel('x2(t)')
% zlabel('x3(t)')
% view(-25,40)
% xlim([-15 15])
% ylim([-15 200])
% zlim([-5 25])
% hold off
% axes('Position',[0.3,0.74,0.40,0.3]);
% hold on
% grid on
% plot3(xf1(:,1)',xf2(:,1)',xf3(:,1)',':','LineWidth',2)
% plot3(xf1(:,2)',xf2(:,2)',xf3(:,2)',':','LineWidth',2) 
% plot3(xf1(:,3)',xf2(:,3)',xf3(:,3)',':','LineWidth',2)
% plot3(xf1(:,4)',xf2(:,4)',xf3(:,4)',':','LineWidth',2)
% plot3(xf1(:,5)',xf2(:,5)',xf3(:,5)',':','LineWidth',2)
% plot3(xf1(:,6)',xf2(:,6)',xf3(:,6)',':','LineWidth',2)
% plot3(xl1(:,1)',xl2(:,1)',xl3(:,1)','Color','#0072BD','LineWidth',3)
% plot3(xl1(:,2)',xl2(:,2)',xl3(:,2)','Color','#D95319','LineWidth',3)
% plot3(xl1(:,3)',xl2(:,3)',xl3(:,3)','Color','#A2142F','LineWidth',3)
% t=zeros(8,3);
% for i = 1:8
%     plot3(xl1(i*(length(T)-1)/10,1:2),xl2(i*(length(T)-1)/10,1:2),xl3(i*(length(T)-1)/10,1:2),'c','LineWidth',3)
%     plot3(xl1(i*(length(T)-1)/10,2:3),xl2(i*(length(T)-1)/10,2:3),xl3(i*(length(T)-1)/10,2:3),'c','LineWidth',3)
%     plot3(xl1(i*(length(T)-1)/10,1:2:3),xl2(i*(length(T)-1)/10,1:2:3),xl3(i*(length(T)-1)/10,1:2:3),'c','LineWidth',3)
%     t(i,:)=[xl1(i*(length(T)-1)/10,2),xl2(i*(length(T)-1)/10,2),xl3(i*(length(T)-1)/10,2)];
% end
% str='t = 12 s';
% text(t(2,1),t(2,2),t(2,3),str,'FontSize',10)
% view(-25,40)
% xlim([-15 15])
% ylim([-50 1050])
% zlim([-5 25])
% hold off

hold off
figure2 = figure;
figure2.Position = [50 50 700 650];
subplot(3,1,1);
hold on
grid on
plot(T,xf1(:,1)',':','LineWidth',2)
plot(T,xf1(:,2)',':','LineWidth',2)
plot(T,xf1(:,3)',':','LineWidth',2)
plot(T,xf1(:,4)',':','LineWidth',2)
plot(T,xf1(:,5)',':','LineWidth',2)
plot(T,xf1(:,6)',':','LineWidth',2)
plot(T,xl1(:,1)','Color','#0072BD','LineWidth',1.5)
plot(T,xl1(:,2)','Color','#D95319','LineWidth',1.5)
plot(T,xl1(:,3)','Color','#A2142F','LineWidth',1.5)
hold off
legend('x_{11}','x_{21}','x_{31}','x_{41}','x_{51}','x_{61}','x_{71}','x_{81}','x_{91}','Orientation','horizontal','Location','northoutside')
xlabel('Time(sec)')
subplot(3,1,2);
hold on 
grid on
plot(T,xf2(:,1)',':','LineWidth',2)
plot(T,xf2(:,2)',':','LineWidth',2)
plot(T,xf2(:,3)',':','LineWidth',2)
plot(T,xf2(:,4)',':','LineWidth',2)
plot(T,xf2(:,5)',':','LineWidth',2)
plot(T,xf2(:,6)',':','LineWidth',2)
plot(T,xl2(:,1)','Color','#0072BD','LineWidth',1.5)
plot(T,xl2(:,2)','Color','#D95319','LineWidth',1.5)
plot(T,xl2(:,3)','Color','#A2142F','LineWidth',1.5)
legend('x_{12}','x_{22}','x_{32}','x_{42}','x_{52}','x_{62}','x_{72}','x_{82}','x_{92}','Orientation','horizontal','Location','northoutside')
xlabel('Time(sec)')
hold off
subplot(3,1,3);
hold on 
grid on
plot(T,xf3(:,1)',':','LineWidth',2)
plot(T,xf3(:,2)',':','LineWidth',2)
plot(T,xf3(:,3)',':','LineWidth',2)
plot(T,xf3(:,4)',':','LineWidth',2)
plot(T,xf3(:,5)',':','LineWidth',2)
plot(T,xf3(:,6)',':','LineWidth',2)
plot(T,xl3(:,1)','Color','#0072BD','LineWidth',1.5)
plot(T,xl3(:,2)','Color','#D95319','LineWidth',1.5)
plot(T,xl3(:,3)','Color','#A2142F','LineWidth',1.5)
legend('x_{13}','x_{23}','x_{33}','x_{43}','x_{53}','x_{63}','x_{73}','x_{83}','x_{93}','Orientation','horizontal','Location','northoutside')
xlabel('Time(sec)')
hold off

% hold off
% figure(3)
% subplot(3,1,1);
% hold on
% grid on
% plot(T,e1(:,1)','LineWidth',1)
% plot(T,e1(:,2)','LineWidth',1)
% plot(T,e1(:,3)','LineWidth',1)
% plot(T,e1(:,4)','LineWidth',1)
% plot(T,e1(:,5)','LineWidth',1)
% plot(T,e1(:,6)','LineWidth',1)
% hold off
% legend('\xi_{11}','\xi_{21}','\xi_{31}','\xi_{41}','\xi_{51}','\xi_{61}','Orientation','horizontal')
% xlabel('Time(sec)')
% subplot(3,1,2);
% hold on 
% grid on
% plot(T,e2(:,1)','LineWidth',1)
% plot(T,e2(:,2)','LineWidth',1)
% plot(T,e2(:,3)','LineWidth',1)
% plot(T,e2(:,4)','LineWidth',1)
% plot(T,e2(:,5)','LineWidth',1)
% plot(T,e2(:,6)','LineWidth',1)
% legend('\xi_{12}','\xi_{22}','\xi_{32}','\xi_{42}','\xi_{52}','\xi_{62}','Orientation','horizontal')
% xlabel('Time(sec)')
% hold off
% subplot(3,1,3);
% hold on 
% grid on
% plot(T,e3(:,1)','LineWidth',1)
% plot(T,e3(:,2)','LineWidth',1)
% plot(T,e3(:,3)','LineWidth',1)
% plot(T,e3(:,4)','LineWidth',1)
% plot(T,e3(:,5)','LineWidth',1)
% plot(T,e3(:,6)','LineWidth',1)
% legend('\xi_{13}','\xi_{23}','\xi_{33}','\xi_{43}','\xi_{53}','\xi_{63}','Orientation','horizontal')
% xlabel('Time(sec)')
% hold off



figure4 = figure;
figure4.Position = [50 50 550 650];
ax(1)=subplot(3,1,1);
hold on
grid on
plot(T,ep1(:,1)','LineWidth',1)
plot(T,ep1(:,2)','LineWidth',1)
plot(T,ep1(:,3)','LineWidth',1)
plot(T,ep1(:,4)','LineWidth',1)
plot(T,ep1(:,5)','LineWidth',1)
plot(T,ep1(:,6)','LineWidth',1)
ylim([-300 800])
hold off
legend('\epsilon_{11}','\epsilon_{21}','\epsilon_{31}','\epsilon_{41}','\epsilon_{51}','\epsilon_{61}','Orientation','horizontal','Location','northoutside')
xlabel('Time(sec)')
ax(2)=subplot(3,1,2);
hold on 
grid on
plot(T,ep2(:,1)','LineWidth',1)
plot(T,ep2(:,2)','LineWidth',1)
plot(T,ep2(:,3)','LineWidth',1)
plot(T,ep2(:,4)','LineWidth',1)
plot(T,ep2(:,5)','LineWidth',1)
plot(T,ep2(:,6)','LineWidth',1)
ylim([-300 800])
legend('\epsilon_{12}','\epsilon_{22}','\epsilon_{32}','\epsilon_{42}','\epsilon_{52}','\epsilon_{62}','Orientation','horizontal','Location','northoutside')
xlabel('Time(sec)')
hold off
ax(3)=subplot(3,1,3);
hold on 
grid on
plot(T,ep3(:,1)','LineWidth',1)
plot(T,ep3(:,2)','LineWidth',1)
plot(T,ep3(:,3)','LineWidth',1)
plot(T,ep3(:,4)','LineWidth',1)
plot(T,ep3(:,5)','LineWidth',1)
plot(T,ep3(:,6)','LineWidth',1)
ylim([-300 800])
legend('\epsilon_{13}','\epsilon_{23}','\epsilon_{33}','\epsilon_{43}','\epsilon_{53}','\epsilon_{63}','Orientation','horizontal','Location','northoutside')
xlabel('Time(sec)')
MagInset(figure4, ax(1), [5 15 -11 11], [3 14 250 800], {'NE','NE';'SW','SW'});
MagInset(figure4, ax(2), [5 15 -11 11], [3 14 250 800], {'NE','NE';'SW','SW'});
MagInset(figure4, ax(3), [5 15 -14 14], [3 14 250 800], {'NE','NE';'SW','SW'});