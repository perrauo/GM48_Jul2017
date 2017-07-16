/// @description Insert description here
// You can write your code in this editor


if(image_index >= image_number-1)
{
	if(image_speed != 0)
	{ alarm_set(0,10)
	
	
	
	
	
	
	}
	
	
	
	image_speed = 0;
}

if(image_speed == 0)
{
	alpha = lerp(alpha,0,.2);
}


if(user != noone  && instance_exists(user))
{	x = user.x+offset_x;
	y = user.y+offset_y;
}