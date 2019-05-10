left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
enter = keyboard_check_pressed(vk_enter);
shift = keyboard_check(vk_lshift);
start = keyboard_check_pressed(ord("R"));

//gamepad
if (abs(gamepad_axis_value(0,gp_axislv)) > 0.5)
{
	if (max(gamepad_axis_value(0,gp_axislv),0) > 0.7) down = 1;
		
	else down = max(gamepad_axis_value(0, gp_axislv),0);
	
	if (abs(min(gamepad_axis_value(0,gp_axislv),0)) > 0.7)	up = 1;
		
	else up = abs(min(gamepad_axis_value(0,gp_axislv),0));
}
if (abs(gamepad_axis_value(0,gp_axislh)) > 0.1)
{
	if (abs(min(gamepad_axis_value(0,gp_axislh),0)) > 0.7)	left = 1;
		
	else left = abs(min(gamepad_axis_value(0,gp_axislh),0));
	
	if (max(gamepad_axis_value(0,gp_axislh),0) > 0.7) right = 1;
		
	else right = max(gamepad_axis_value(0, gp_axislh),0);
}

if gamepad_button_check_pressed(0,gp_start) enter = 1;
if gamepad_button_check_pressed(0,gp_face1) enter = 1;
if gamepad_button_check_pressed(0,gp_face2) enter = 1;
if gamepad_button_check_pressed(0,gp_face3) enter = 1;
if gamepad_button_check_pressed(0,gp_face4) enter = 1;
if gamepad_button_check_pressed(0,gp_start) start = 1;