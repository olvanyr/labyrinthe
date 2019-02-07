/// @description move_and_collide
/// @arg xSpeed
/// @arg ySpeed

var _xspeed = argument0;
var _yspeed = argument1;

if place_meeting(x + _xspeed, y, oWall)
{
	while !place_meeting(x + sign(_xspeed), y, oWall)
	{
		x += sign(_xspeed);
	}
	_xspeed = 0;
}

x += _xspeed;

if place_meeting(x, y + _yspeed, oWall)
{
	while !place_meeting(x, y + sign(_yspeed), oWall)
	{
		y += sign(_yspeed);
	}
	_yspeed = 0;
}

y += _yspeed;

