
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

if(layer_exists("Backgrounds_2"))
{
		layer_x("Backgrounds_2", lerp(0,room_width-sprite_get_width(sB),xpos));
}

show_debug_message(lerp(0,room_width-sprite_get_width(sB),xpos));
show_debug_message(string( x) + "boat");

