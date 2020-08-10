A=3;
L=8.7;
M=4;
for i=0:1:8;                %outer loop for switching direction of rotation of link2
for theta=-(-1)^i*pi/2:(-1)^i*0.15:(-1)^i*pi/2;
 syms x y
 [a,b]=solve(x^2+y^2-L^2,(x-A-A*cos(theta))^2+(y-A*sin(theta))^2-M^2);
 if(~(isreal(a)&&isreal(b))) continue   
 end
 %creating ground link(link1) 
 plot([0 A],[0 0],'o-','linewidth',2);
 hold on;
 %creating link2(see report)
 plot([A A*cos(theta)+A],[0 A*sin(theta)],'o-','linewidth',2);
 
 %solving for finding coordinates of endpoints of link5 & link6
 [a,b]=solve(x^2+y^2-L^2,(x-A-A*cos(theta))^2+(y-A*sin(theta))^2-M^2);
 %creating link5 & link6(see report)(part of the rhombus)
 plot([A*cos(theta)+A a(1)],[A*sin(theta) b(1)],'o-','linewidth',2);
 plot([A*cos(theta)+A a(2)],[A*sin(theta) b(2)],'o-','linewidth',2);
 %creating link3 & link4(see report)
 plot([0 a(1)],[0 b(1)],'o-','linewidth',2);
 plot([0 a(2)],[0 b(2)],'o-','linewidth',2);
 
 %plotting link7 & link8(see report)(part of rhombus)
% [c,d]=solve((x-a(1))^2+(y-b(1))^2-M^2,(x-a(2))^2+(y-b(2))^2-M^2);
 %if(d(2)==A*sin(theta))
  c=a(1)+a(2)-A-A*cos(theta);
  d=b(1)+b(2)-A*sin(theta);
 plot([a(1) c],[b(1) d],'o-','linewidth',2);
    plot([a(2) c],[b(2) d],'o-','linewidth',2);
 %end
 %if(d(1)==A*sin(theta))
%    plot([a(1) c(2)],[b(1) d(2)],'o-','linewidth',2);
 %   plot([a(2) c(2)],[b(2) d(2)],'o-','linewidth',2);
 %end 
 
 text(-8,-9,'Peaucellier–Lipkin linkage straight line mechanism'); 
 hold off;
 axis(gca, 'equal');
 axis([-10 10 -10 10]);
pause(0.02)
end
end
