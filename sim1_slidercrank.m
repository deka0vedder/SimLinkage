L2=20;
L3=60;
for theta=0:0.2:8*pi
    plot([30 99],[5 5]);
    hold on;
    plot([30 99],[-5 -5]);
    plot([0 0],[-10,10]);
   
    %plotting the crank
    plot([0 L2*cos(theta)],[0 L2*sin(theta)],'o-','linewidth',2);
    
    x=L2*cos(theta)+sqrt(L3^2 -(L2*sin(theta))^2);
    %plotting the slider
    rectangle('Position',[x-5,-5,10,10],'FaceColor','r');
    
    %plotting the connecting link
    plot([L2*cos(theta) x],[L2*sin(theta) 0],'o-','linewidth',2);
  
    text(0,-40,'Slider-Crank mechanism');
    hold off;
   
    axis(gca, 'equal');
    axis([-50 100 -50 50]);
 pause(0.1)
end