
if (instance_exists(follow))
{
	xTo = follow.x - x;
	yTo = follow.y - y;
}


x += xTo / 2;
y += yTo / 2;

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

xpos = (x - view_w_half)/(room_width-camera_get_view_width(cam));
ypos = (y - view_h_half)/(room_height-camera_get_view_height(cam));


if(layer_exists("b_calc"))
{
		layer_x("b_calc", lerp(0,room_width-sprite_get_width(sB),xpos));
		layer_y("b_calc", lerp(0,room_height-sprite_get_width(sB),ypos));
}

