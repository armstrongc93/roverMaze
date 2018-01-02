% Determine desired velocity of system
function [v_x, v_y] = desiredVelocity(time, dt, x, y)

for i = 2:length(time)
    v_x(i) = (x(i)-x(i-1))/dt;
    v_y(i) = (y(i)-y(i-1))/dt;
end

figure
plot(time, v_x, time, v_y);
grid on
grid minor
axis([0 10 -2 2])
legend('x-velocity', 'y-velocity','Location','southeast')
xlabel('Time (s)')
ylabel('Velocity')
title('Velocity vs. Time')