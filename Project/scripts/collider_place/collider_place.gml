/// @description Check collision with collider object
/// @param x
/// @param y
/// @param COLLIDER_TYPE
/// @return hit or noone

var xx = argument0;
var yy = argument1;
var _TYPE = argument2;	


	var hits = instance_place_multiple(xx, yy, obj_collider);
	
	if(hits != noone)//if hits is not noone
	{
		//iterate through
		var count = ds_list_size(hits)
	
			for(var i = 0; i < count; i++)
			{	
				var hit = ds_list_find_value(hits, i);
					
				if(hit.TYPE == _TYPE)
				{
					return hit; //return true if exist n match type
				}
				
			}
	}
	


//if no collide was found
return noone;