/// @description Check if given is a object
/// @param level_section


var width = tilemap_get_width(tm_id_sidewalk);
var height = tilemap_get_height(tm_id_sidewalk);

var tile = noone;
for(var i = 0; i< height; i++)
{
	for(var j = 0; j< width; j++)
	{
		tile = tilemap_get(tm_id_sidewalk, j,i);
		
				
		if(!tile_get_empty(tile))
		{
									
			//choose tile
			var new_tile_index = choose(1,2,3);
			var new_tile = tile_set_index(tile, new_tile_index);
			
			//tilemap_set(tilemap_element_id, tiledata, xcell, ycell)
			tilemap_set(tm_id_sidewalk, new_tile, j, i);
			
			
		}
	}
}



var task_count = 4+(round(global.section_count*global.difficulty));//
//Add task to the world (e.g puddle)

var pos_x = noone;
var pos_y = noone;

for(var i = 0; i<task_count; i++)
{
	
	var flag1 = true;
	var flag2 = true;
	while(true)//find suitable pos
	{
		pos_x = random_range(-cam_width, cam_width);
		pos_y = random_range(260, 300);
		
		if(collision_circle(pos_x, pos_y, 50, obj_task, false, false) == noone)
		flag1 = true;
		
		var tile = tilemap_get_at_pixel(tm_id_sidewalk, pos_x, pos_y);
		
		if(!tile_get_empty(tile))
		{		
			flag2 = true;
		}
			
		
				//both cond met
		if(flag1 && flag2)
		break;
		
	}
	
	
	//choose between many task
	var task = instance_create_depth(pos_x,pos_y, depth_foreground,choose(obj_puddle));
	//add to my objects so we can move them
	ds_list_add(my_objects, task);

}


//////objects n buildings///
var size = ds_list_size(my_buildings);
for(i = 0; i<size; i++)
{
	var building = ds_list_find_value(my_buildings, i);
	with(building)
	{
	instance_change(obj_building, true);
	}
}
