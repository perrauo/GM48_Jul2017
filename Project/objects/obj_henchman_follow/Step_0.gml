/// @description Insert description here
// You can write your code in this editor

//inherit FSM and transitions to other states
event_inherited();

//transition
event_user(0);

if(!point_in_circle(dest_x, dest_y, obj_boss.x, obj_boss.y, follow_dist))
{
	while(true)
	{
	
	
	var _dir_x = lengthdir_x(1, random_range(-50,50));
	var _dir_y = lengthdir_y(1, random_range(-50,50));
	
	dest_x = obj_boss.x+_dir_x*follow_dist;
	dest_y = obj_boss.y+_dir_y*follow_dist;
	
	dest_y = clamp(dest_y, 260, 300);
	
		//first condition
		var flag = false;
		for(i = 0; i< 3; i++)
		{
			var tm_id = ds_list_find_value(global.lv_sections,i).tm_id_sidewalk;
			
			if(!tile_get_empty(tilemap_get_at_pixel(tm_id, dest_x, dest_y)))
			{
				flag = true;
				break;
			}
		}	
	
		if(flag)
		break; //correct destination
	}
	
}


mp_potential_step_object(dest_x, dest_y, move_spd, noone);



//get angle
dir = point_direction(x, y, dir_x, dir_y);

var pt = global.pt_water1;

//get angle
dir = point_direction(x, y, dir_x, dir_y);

//light_beige = make_color_rgb(255, 255, 179);
color = make_color_rgb(224, 234, 244);

part_type_alpha3(pt,.03,1,.5);//set alpha
part_type_speed(pt,.1,2,0,.5);
part_type_color1(pt, color);
part_type_direction(pt, dir-10, dir+10,0,0);
part_type_life(pt, 10,20);
part_type_gravity(pt,.08, down);
part_type_sprite(pt,spr_part_rain,1,0,true);


part_emitter_region(global.ps_water, em_water,x-10,x-5,y,y,0,0);

if(alarm_get(11) == -1)
{	//set part alarm
	alarm_set(11,random_range(10,20));
}




