///scr_atack_state
image_speed = .5

switch (sprite_index) {
        case spr_player_down:
            sprite_index = spr_player_atack_down;
            break;
            
        case spr_player_up:
            sprite_index = spr_player_atack_up;
            break;
            
        case spr_player_left:
            sprite_index = spr_player_atack_left;
            break;
            
        case spr_player_right:
            sprite_index = spr_player_atack_right;
            break;
            } 

if (image_index >= 3 and atacked = false) {
    var xx = 0;
    var yy = 0;
    switch (sprite_index) {
        case spr_player_atack_down:
            xx = x;
            yy = y+14;
            break;
            
        case spr_player_atack_up:
            xx = x;
            yy = y-12;
            break;
            
        case spr_player_atack_left:
            xx = x-12;
            yy = y+2;
            break;
            
        case spr_player_atack_right:
            xx = x+12;
            yy = y+2; 
            break;
    }
    var dmg = instance_create(xx,yy,obj_damage)
    obj_damage.creator = id;
    obj_damage.dmg = obj_player_stats.attack;
    atacked = true;
}


