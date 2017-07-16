/// @description Insert description here
// You can write your code in this editor

//init
if(!init)
{
	//get instances from layer
	
	
	var elements = layer_get_all_elements(inst_layer_id);
	var size =  array_length_1d(elements);
		
	for(i = 0; i<size; i++)
	{
				
		var elem = elements[i];
		var inst = layer_instance_get_instance(elem);	//get inst from elemid
		
			
		if(inst.object_index == obj_building)
		ds_list_add(my_buildings, inst);
		else if(object_is_ancestor(inst.object_index, obj_world_object))
		{
			ds_list_add(my_objects, inst);
		}
	}
		
	
	tm_id_sidewalk = layer_tilemap_get_id(tm_layer_id_sidewalk);//id
	tilemap_x(tm_id_sidewalk, offset_x);
	
	tm_id_road = layer_tilemap_get_id(tm_layer_id_road);//id
	tilemap_x(tm_id_road, offset_x);
		
	//init
	init = true;
}


//scroll section
//tms

tilemap_x(tm_id_sidewalk, offset_x);//tm
tilemap_x(tm_id_road, offset_x);//tm

//////objects n buildings///
var size = ds_list_size(my_buildings);
for(i = 0; i<size; i++)
{
	var building = ds_list_find_value(my_buildings, i);
	building.x = building.start_x + offset_x;
}


//update offset_x
offset_x -= global.scroll_spd;


//iff section is offsecreen mod and add back

//todo FIX A LITTLE OF JITTERING
if(offset_x < -cam_width)
{
		
	ds_list_clear(my_objects);
	
	score+= 10;
	global.section_count ++;
	
	//find furthest offseted sec
	var biggest_offset = ds_list_find_value(global.lv_sections,0).offset_x;
	for(i = 1; i< 3; i++)
	{
		var offset = ds_list_find_value(global.lv_sections,i).offset_x;
		if(offset > biggest_offset)
		biggest_offset = offset;	
	}	

	//change section layout
	change_section();	
	
	//add offscreen section at correct offset
	offset_x = biggest_offset+cam_width-2;
	
	//clear my objects (buildings are kept)
				
}
