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


//add regular puddles
var puddle_count = 4+(round(global.section_count*global.difficulty));//
//Add task to the world (e.g puddle)

var pos_x = noone;
var pos_y = noone;

for(var i = 0; i<puddle_count; i++)
{
	var ok_rad = 50;
	do
	{
	pos_x = random_range(cam_width*1.3, 2.5*cam_width);
	pos_y = random_range(260, 280);
		
	}until(collision_circle(pos_x,pos_y,ok_rad,obj_puddle, false,false) == noone)
	
	//choose between many task
	var puddle = instance_create_depth(pos_x,pos_y, depth_foreground,obj_puddle);
	//add to my objects so we can move them
	ds_list_add(my_objects, puddle);

}


//add car puddles
puddle_count = 1+(round(global.section_count*global.difficulty));//

for(var i = 0; i<puddle_count; i++)
{
	var ok_rad = 50;
	do
	{
	pos_x = random_range(cam_width*1.3, 2.5*cam_width);
	pos_y = 360;
	
		
	}until(collision_circle(pos_x,pos_y,ok_rad,obj_car_puddle, false,false) == noone)
	
		
	//choose between many task
	var puddle_large = instance_create_depth(pos_x,pos_y, depth_foreground,obj_car_puddle);
	//add to my objects so we can move them
	ds_list_add(my_objects, puddle_large);

}



//////Randomize buildings///
var size = ds_list_size(my_buildings);
for(i = 0; i<size; i++)
{
	var building = ds_list_find_value(my_buildings, i);
	with(building)
	{
	instance_change(obj_building, true);
	}
}
