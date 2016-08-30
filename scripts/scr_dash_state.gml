//scr_move_state
if dashing = true && obj_player_stats.stamina > 0 {
    len = spd*4

    // Move
    hspd = lengthdir_x(len, dir);
    vspd = lengthdir_y(len, dir);

    // Move again
    phy_position_x += hspd;
    phy_position_y += vspd;

    // Create the dash effect
    var dash = instance_create(x, y, obj_dash_effect);
    dash.sprite_index = sprite_index;
    dash.image_index = image_index;
}
