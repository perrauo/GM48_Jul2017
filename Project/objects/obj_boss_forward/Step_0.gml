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
		if(is_between(dest_x,0, cam_width/2))
		{
			break
		}
		else
		{
			dest_x = cam_width/3;
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
	dest_y = clamp(dest_y, 260, 270);
	mp_potential_step_object(dest_x, dest_y, move_spd, obj_obstacle);
}



//CHECK ANGRY

if(global.rain_active && !busy)
{
	other.STATE = BOSS_STATES.ANGRY;
	exit;

}


//PUDDLE INTERACTION

//check if puddle is protected else get angry
with(bottom_collider)
{	
	
			
	var puddles = instance_place_multiple(x,y,obj_puddle);
	
	if(puddles != noone)
	{
		var size = ds_list_size(puddles);
	
		for(var i = 0; i < size; i++)
		{
		var puddle = ds_list_find_value(puddles, i);
		
		if(!puddle.busy)
		{
		other.STATE = BOSS_STATES.ANGRY;
		break;
		}
		}
	}
	
	
	var splash = collider_place(x,y,COLLIDER_TYPE.SPLASH);
	
	if(splash != noone)
	{				
		//if splashed then angry
		if(place_meeting(x,y,splash))
		other.STATE = BOSS_STATES.ANGRY;
	}
		
	
	
	
}













