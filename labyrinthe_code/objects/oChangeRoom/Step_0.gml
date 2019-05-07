if collision_circle(x,y,10,oBoat,false,true) && oInput.enter
{
	instance_create_layer(0,0,"Instances", oTransition);
}