/// @description Init State
// You can write your code in this editor

follow_dist = 100;

//if is within range else follow boss
if(point_in_circle(x, y,obj_boss.x, obj_boss.y, follow_dist))
{
	dest_x = x
	dest_y = y
}
else
{
		var _dir_x = lengthdir_x(1, random_range(-50,50));
	var _dir_y = lengthdir_y(1, random_range(-50,50));
	
	dest_x = obj_boss.x+_dir_x*follow_dist;
	dest_y = obj_boss.y+_dir_y*follow_dist;
	
	dest_y = clamp(dest_y, 260, 300);
	
}



//create emiter
em_water = part_emitter_create(global.ps_water);