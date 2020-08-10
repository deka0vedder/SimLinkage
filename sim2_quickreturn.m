L1=40;
L2=25;
L3=80;
L4=40;
L5=60;

for th=0:0.2:8*pi
    plot([-99 99],[0 0]);
    hold on;
    plot([-99 99],[55 55]);
    plot([0 0],[-10 70]);
   
    %plotting the crank
    plot([0 L2*cos(th)],[L1 L1-L2*sin(th)],'o-','linewidth',2);
 
    th2=atan((L2*sin(th)-L1)/(L2*cos(th)));
    if(th2<0)
        th2=th2+pi
    end
   
    %plotting the slotted bar
    plot([0 -L3*cos(th2)], [0 L3*sin(th2)],'o-','linewidth',2);
   
    th3=asin((L3*sin(th2)-L5)/L4);
    x=-L3*cos(th2)+L4*cos(th3);
    %plotting the ram or cutting tool
    rectangle('Position',[x-5,55,10,10],'FaceColor','b');
    
    %plotting the connecting link
    plot([-L3*cos(th2) x],[L3*sin(th2) L5],'o-','linewidth',2);
    text(25,-10,'Quick Return mechanism');
    
    hold off;
    axis(gca, 'equal');
    axis([-100 100 -25 100]);
 pause(0.1)
end