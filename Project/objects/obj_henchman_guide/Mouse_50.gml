/// @description move with mouse

//put in STATE MACHINE


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
		
		with(bottom_collider)
		{if (!place_meeting(x+dx,y,obj_collider))
		{
			other.x += dx;
			other.is_moving = true;
		}
		
		if (!place_meeting(x,y+dy,obj_collider))
		{
			other.y += dy;
			other.is_moving = true;
		}
		}
	}
	
	
	
	//get angle
dir = point_direction(x, y, dir_x, dir_y);

var pt = global.pt_water1;

//get angle
dir = direction;

//light_beige = make_color_rgb(255, 255, 179);
color = make_color_rgb(224, 234, 244);

part_type_alpha3(pt,.03,1,.5);//set alpha
part_type_speed(pt,.1,3,0,.5);
part_type_color1(pt, color);
part_type_direction(pt, dir-10, dir+10,0,0);
part_type_life(pt, 10,20);
part_type_gravity(pt,.08, down);
part_type_sprite(pt,spr_part_rain,1,0,true);


part_emitter_region(global.ps_water, em_water,x-8,x-3,y,y,0,0);


if(alarm_get(11) == -1)
{	//set part alarm
	alarm_set(11,random_range(10,20));
}
