///scr_move_state
if (obj_input.dash_key) {
    state = scr_dash_state;
    alarm[0] = room_speed/8;
}

if (obj_input.atack_key) {
    var xdir = lengthdir_x(8, face*90);
    var ydir = lengthdir_y(8, face*90);
    var speaker = instance_place(x+xdir, y+ydir, obj_speaker);
    if (speaker != noone) {
    // Talk
    with (speaker) {
        if (!instance_exists(dialog)) {
            dialog = instance_create(x+xoffset, y+yoffset, obj_dialog);
            dialog.text = text;
        } else {
            dialog.text_page++;
            dialog.text_count = 0;
            if (dialog.text_page > array_length_1d(dialog.text)-1) {
                with (dialog) {
                   instance_destroy();
                }
            }
        }
    }
    } else {
    //Atack
    image_index = 0;
    state = scr_atack_state;
    }
}

//Get Dir(py)
dir = point_direction(0, 0, obj_input.xaxis, obj_input.yaxis)

// Get the length
if (obj_input.xaxis == 0 and obj_input.yaxis = 0) {
    len = 0;
    dashing = false;
} else {
    len = spd;
    dashing = true;
    scr_get_face();
}

// Move
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move again
phy_position_x += hspd;
phy_position_y += vspd;

//animate!:D >3 lelel
image_speed = sign(len)*.2;
if (len == 0) image_index = 0;


if (face == RIGHT) {
    sprite_index = spr_player_right;
}
if (face == UP) {
    sprite_index = spr_player_up;
}
if (face == LEFT) {
    sprite_index = spr_player_left;
}
if (face == DOWN) {
    sprite_index = spr_player_down;
}
