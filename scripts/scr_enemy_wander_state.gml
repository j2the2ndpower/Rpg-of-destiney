///scr_enemy_wander_state
spd = .5;
scr_check_for_player();
if (point_distance(x,y,targetx,targety) > spd) {
    scr_move_to_target();
    if (hspd !=0) {
    image_xscale = sign(hspd);
        }
    }
