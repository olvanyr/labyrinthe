
if (instance_exists(follow))
{
	xTo = follow.x - x;
	yTo = follow.y - y;
}


x += xTo / 10;

y += yTo / 10;

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);
