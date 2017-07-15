/// @description Check collision with multiple object and return hits or noone
/// @param x
/// @param y
/// @param obj
/// @return ds_list_hits

var xx = argument0;
var yy = argument1;
var obj = argument2;	

var hit_list = ds_list_create();

do
{	
	var hit = instance_place(xx, yy, obj);
			
	if(instance_exists(hit))
	{
		hit.x += offscreen;
		hit.y += offscreen;
		ds_list_add(hit_list, hit);
	}
	
	
}until(!instance_exists(hit))

//restore positions
var count = ds_list_size(hit_list);
for(var i = 0; i < count; i++)
{
	var inst = ds_list_find_value(hit_list, i);
	inst.x -= offscreen;
	inst.y -= offscreen;
}


//return noone or list
if(ds_list_empty(hit_list))
return noone;
else
return hit_list;

