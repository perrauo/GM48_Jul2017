/// @description Insert description here
// You can write your code in this editor

//inherit FSM and transitions to other states
event_inherited();


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





