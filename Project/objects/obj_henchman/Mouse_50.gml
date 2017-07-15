/// @description move with mouse

//put in STATE MACHINE
if(selected)
{

	if (point_distance(x,y,mouse_x,mouse_y) < my_spd)
	{
		is_moving = false;
		direction = point_direction(x,y,mouse_x,mouse_y);
		x = mouse_x;
		y = mouse_y;
	}
	else
	{
		is_moving = false;
		direction = point_direction(x,y,mouse_x,mouse_y);
		var dx = lengthdir_x(my_spd,direction);
		var dy = lengthdir_y(my_spd,direction);
	
		if (!place_meeting(x+dx,y,obj_collider))
		{
			x += dx;
			is_moving = true;
		}
		
		if (!place_meeting(x,y+dy,obj_collider))
		{
			y += dy;
			is_moving = true;
		}
	}
	
}