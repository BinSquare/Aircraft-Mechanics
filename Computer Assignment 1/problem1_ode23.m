[t,v] = ode23(@acc_calc, [0 25], 0);
groundroll_dist = trapz(t,v)