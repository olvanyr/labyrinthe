//set up camera
cam = view_camera[0];
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;

xTo = xstart;
yTo = ystart;

follow = oBoat;

show_debug_message(camera_get_view_width(cam));
show_debug_message(camera_get_view_height(cam));