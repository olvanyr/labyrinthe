
//move

if input.right
{
	sprite_index = sBoat_left_right;
	physics_apply_force(x,y,move_speed,0);
}
if input.left
{
	sprite_index = sBoat_left_right;
	physics_apply_force(x,y,-move_speed,0);
}
if input.up
{
	sprite_index = sBoat_up_down;
	physics_apply_force(x,y,0,-move_speed);
}
if input.down
{
	sprite_index = sBoat_up_down
	physics_apply_force(x,y,0,move_speed);
}

if input.right && input.up
{
	sprite_index = sBoat_diagonally_up;
}
if input.right && input.down
{
	sprite_index = sBoat_diagonally_down;
}
if input.left && input.up
{
	sprite_index = sBoat_diagonally_down;
}
if input.left && input.down
{
	sprite_index = sBoat_diagonally_up;
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



