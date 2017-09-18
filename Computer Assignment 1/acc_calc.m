function [ acceleration ] = acc_calc(t,v)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
thrust = 360;
ref_area = 175.5;
rolling_friction = 0.025;
weight = 2450;
gravity =32.2;
sl_density = 0.00238;
drag_coef = 0.02;
induced_drag = 0.085;
optimal_cl = rolling_friction/(2*induced_drag);

acceleration = gravity/weight*(thrust-rolling_friction ...
    *weight-(drag_coef+induced_drag*optimal_cl^2 ...
    -rolling_friction*optimal_cl)*1/2*sl_density*ref_area*v.^2);



end

