/// @description Insert description here
// You can write your code in this editor

//motion planning grid
map_grid = mp_grid_create(0,0,room_width div 32, room_height div 32,32,32);


waypoints = ds_list_create();

num_waypoints = 0;

my_paths = ds_list_create();



cursor = obj_grid_cursor;