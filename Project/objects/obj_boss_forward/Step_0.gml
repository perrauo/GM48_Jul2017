/// @description Insert description here
// You can write your code in this editor

//inherit FSM and transitions to other states
event_inherited();

//give you 1 move every 5 seconds
var rand_move = irandom(room_speed/move_freq)

if (rand_move == 0)
{

	while(true)
	{
    dest_x = (x + irandom_range(-wander_dist, wander_dist));
    dest_y = (y + irandom_range(-wander_dist, wander_dist));
	
		//first condition
		var flag1 = false;
		for(i = 0; i< 3; i++)
		{
			var tm_id = ds_list_find_value(global.lv_sections,i).tm_id_sidewalk;
			
			if(tilemap_get_at_pixel(tm_id, dest_x, dest_y))
			{
				flag1 = true;
				break;
			}
		}	
		
		//second condition
		if(flag1)
		if(is_between(dest_x, global.main_cam.x-100, global.main_cam.x+100))
		{
			break
		}
		else
		{
			dest_x = global.main_cam.x;
			break;
		}
	} 
	
	
	
	var biggest_offset = ds_list_find_value(global.lv_sections,0).offset_x;
	for(i = 1; i< 3; i++)
	{
		var offset = ds_list_find_value(global.lv_sections,i).offset_x;
		if(offset > biggest_offset)
		biggest_offset = offset;	
	}	
	
	
}
else
{
    mp_potential_step_object(dest_x, dest_y, move_spd, obj_obstacle);
}