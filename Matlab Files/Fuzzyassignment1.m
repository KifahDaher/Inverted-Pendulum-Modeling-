[t0,y]=ode23('inverted',[0 3],[0.01 0 0 ])
subplot(2,1,1),plot(t0,y(:,1)) % for e
ylabel ('Angular position (rad)')
subplot(2,1,2),plot(t0,y(:,3)) % for u
ylabel ('Input force (N)')