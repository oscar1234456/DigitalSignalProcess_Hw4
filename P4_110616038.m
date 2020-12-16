%Auther: Oscar Chen 110616038
%Theme: DSP First Lab8
%%%%%%%%%%%%%%%%%%%%%%%%%%%

load lighthouse
show_img(xx);  %%Figure1
factor = 3; %%exmple:3
xx3 = xx(1:factor:end, 1:factor:end);
%show_img(xx3);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%

L_xx3 = length(xx3);
nn = ceil((0.999:1:3*L_xx3)/3);
xholdrows = xx3(1:end, nn);
show_img(xholdrows);  %%Figure2

L_xholdrows=size(xholdrows,1);
nn2 = ceil((0.999:1:3*L_xholdrows)/3);
xhold = xholdrows(nn2,:);
show_img(xhold)   %%Figure3

%%%%%%%%%%%%%%%%%%%%%%%%%%%%

xx3_row = size(xx3, 1); %example:109
xx3_col = length(xx3); %example:142
xx_row = size(xx, 1); %example:326
xx_col = length(xx); %example:426

n1 = 1:xx3_row;
tti = 1:(xx3_row/xx_row):xx3_row;
xxllinear = interp1(n1,xx3,tti);
% show_img(xrllinear);
xxllinear = xxllinear.';
n2 = 1:xx3_col;
tti2 = 1:(xx3_col/xx_col):xx3_col;
xxllinear = interp1(n2, xxllinear, tti2).';
show_img(xxllinear);   %%Figure4
