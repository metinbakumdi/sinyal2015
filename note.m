function [xx , tt] = note ( dur )

ff = 0.2 * pi;

tt  = linspace(ff,dur);

xx = sin (tt);

end