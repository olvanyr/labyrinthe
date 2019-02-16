
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
		layer_x("b_calc", lerp(0,room_width-4988,xpos));
		layer_y("b_calc", lerp(0,room_height-2338,ypos));
}

if(layer_exists("text1"))
{
		layer_x("text1", lerp(0,room_width-2000,xpos));
		layer_y("text1", lerp(0,room_height-2000,ypos));
}

if(layer_exists("text2"))
{
		layer_x("text2", lerp(0,room_width-sprite_get_width(sText2),xpos));
		layer_y("text2", lerp(0,room_height-sprite_get_height(sText2),ypos));
}

if(layer_exists("text3"))
{
		layer_x("text3", lerp(0,room_width-sprite_get_width(sText3),xpos));
		layer_y("text3", lerp(0,room_height-sprite_get_height(sText3),ypos));
}