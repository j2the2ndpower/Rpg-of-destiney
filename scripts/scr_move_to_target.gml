///scr_move_to_target
var dir = point_direction(x, y, targetx, targety);
hspd = lengthdir_x(spd, dir);
var vspd = lengthdir_y(spd, dir);
phy_position_x += hspd;
phy_position_y += vspd;
