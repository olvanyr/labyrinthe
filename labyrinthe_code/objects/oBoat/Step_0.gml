
//restart game
if input.start
{
	room_goto(room0);	
}

if keyboard_check_pressed(vk_shift)
{
	slow_speed = 20;
}
// deactivate sound  
if keyboard_check_pressed(ord("A")) && keyboard_check_pressed(ord("E"))
{
	global.mute = !global.mute;
}

show_debug_message(global.mute);
if input.right
{
	sprite_index = sBoat_right;
	phy_position_x += slow_speed;
	//physics_apply_force(x,y,move_speed,0);
}
if input.left
{
	sprite_index = sBoat_left;
	phy_position_x -= slow_speed;
	//physics_apply_force(x,y,-move_speed,0);
}
if input.up
{
	sprite_index = sBoat_up;
	phy_position_y -= slow_speed;
	//physics_apply_force(x,y,0,-move_speed);
}
if input.down
{
	sprite_index = sBoat_down
	phy_position_y += slow_speed;

	//physics_apply_force(x,y,0,move_speed);
}

if input.right && input.up
{
	sprite_index = sBoat_diagonally_up_right;
}
if input.right && input.down
{
	sprite_index = sBoat_diagonally_down_right;
}
if input.left && input.up
{
	sprite_index = sBoat_diagonally_up_left;
}
if input.left && input.down
{
	sprite_index = sBoat_diagonally_down_left;
}

xpos = x/room_width;
ypos = y/room_height;

if(layer_exists("Backgrounds_b"))
{
		layer_x("Backgrounds_b", lerp(0,room_width-sprite_get_width(sCalque_B),xpos));
		layer_y("Backgrounds_b", lerp(0,room_height-sprite_get_height(sCalque_B),ypos));
}

if(layer_exists("Backgrounds_c"))
{
		layer_x("Backgrounds_c", lerp(0,room_width-sprite_get_width(sCalque_C),xpos));
		layer_y("Backgrounds_c", lerp(0,room_height-sprite_get_height(sCalque_C),ypos));
}

if(layer_exists("Backgrounds_title_b"))
{
		layer_x("Backgrounds_title_b", lerp(0,room_width-sprite_get_width(sTitle_calque_B),xpos));
		layer_y("Backgrounds_title_b", lerp(0,room_height-sprite_get_height(sTitle_calque_B),ypos));
}

if(layer_exists("Backgrounds_title_c"))
{
		layer_x("Backgrounds_title_c", lerp(0,room_width-sprite_get_width(sTitle_calque_C),xpos));
		layer_y("Backgrounds_title_c", lerp(0,room_height-sprite_get_height(sTitle_calque_C),ypos));
}




