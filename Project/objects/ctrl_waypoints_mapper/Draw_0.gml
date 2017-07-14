/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_waypoint,0,cursor.x,cursor.y,1,1,0,c_white,.5);


draw_set_color(c_white);
draw_set_alpha(0.5);

for (var i=0; i<num_waypoints; i++)
{
	if (path_exists(ds_list_find_value(my_paths,i)))
	{
		var num_points = path_get_number(ds_list_find_value(my_paths,i));
	
		for (var j=0; j<num_points-1; j++)
		{
			draw_line_width(
			path_get_point_x(ds_list_find_value(my_paths,i),j),
			path_get_point_y(ds_list_find_value(my_paths,i),j),
			path_get_point_x(ds_list_find_value(my_paths,i),j+1),
			path_get_point_y(ds_list_find_value(my_paths,i),j+1),
							8)
		}
	}
}

draw_set_alpha(1);