
draw_set_alpha(timer);
draw_rectangle_color(0,0,window_get_width(),window_get_height(),c,c,c,c,false);

timer += 0.05;
	
if timer >= 1
{
	room_goto(next_room);
}
draw_set_alpha(1);
