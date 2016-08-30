///scr_get_input
right_key = keyboard_check(ord('D'));
left_key = keyboard_check(ord('A'));
up_key = keyboard_check(ord('W'));
down_key = keyboard_check(ord('S'));
dash_key = keyboard_check_pressed(vk_shift);
atack_key = mouse_check_button_pressed(mb_left);
pause_key = keyboard_check(vk_escape);

// get the Axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);


// CHeck for a Trollr
if (gamepad_is_connected(0)) {
    xaxis = gamepad_axis_value(0, gp_axislh);
    yacis = gamepad_axis_value(0, gp_axislv);
}
