if collision_circle(x,y,10,oBoat,false,true) && keyboard_check_pressed(vk_enter)
{
	instance_create_layer(0,0,"Instances", oTransition);
}