/// @description Insert description here
// You can write your code in this editor

//add waypoint
if(mouse_check_button(mb_left))
{
	//create waypoint and temporarily move it 
	var wp = instance_create_depth(cursor.x,cursor.y,depth_middleground,obj_waypoint);
	ds_list_add(waypoints, wp);
	
	var st_posx = wp.x;
	var st_posy = wp.y;
	//temp move offscreen
	wp.x += offscreen;
	wp.y +=offscreen;
	//nearest wp
	var nearest_wp = instance_nearest(st_posx, st_posy, obj_waypoint);
	wp.x -= offscreen;
	wp.y -= offscreen;


	var path = path_add();
	mp_grid_path(map_grid, path, st_posx, st_posy, nearest_wp.x, nearest_wp.y, false);
	ds_list_add(my_paths,path);
	
		
	num_waypoints++;
}

