a=newfis('AC');
a=addvar(a,'input','temperature',[0 100]);
a=addmf(a,'input',1,'Cold','trapmf', [-5 0 5 10]);
a=addmf(a,'input',1,'Cool','trapmf', [7 13 20 25]);
a=addmf(a,'input',1,'Hot','trapmf', [22 30 35 40]);
a=addmf(a,'input',1,'VH','trapmf', [37 40 50 90]);
a=addvar(a,'output','% opening', [0 100]);
a=addmf(a,'output',1,'Z','gaussmf', [3.41 0]);
a=addmf(a,'output',1,'S','gaussmf', [5.13 18]);
a=addmf(a,'output',1,'B','gaussmf', [8.54 50]);
a=addmf(a,'output',1,'VB','gaussmf', [10 90]);
rulelist=[1 1 1 1;
          2 2 1 1;
          3 3 1 1;
          4 4 1 1;]
a=addrule(a,rulelist);
plotmf(a,'input',1);
figure
plotmf(a,'output',1);
temp=50;
out=evalfis(temp,a);
%gensurf(a);
% i=1;
% for temp=0:0.1:100;
%     out(i)=evalfis(temp,a);
%     i=i+1;
% end
% plot(out,temp)
a.input.mf(1).params
a.input.mf(1).type




