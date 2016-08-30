///scr_enemy_chase_state
spd = .75;
scr_check_for_player();
scr_move_to_target();
image_xscale = sign(hspd);
