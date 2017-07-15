/// @description init cam
// You can write your code in this editor

//Properties

x = room_width/4;
y = room_height/2;

debug_enabled = true;

//STATES
/*
	SIDESCROLLING 
	
*/
STATE = "SIDESCROLLING"; 
state_txt_alpha = 1;


/// @description Init cam
cam = camera_create();

//properties
proj_w = 640;
proj_h = 480;

scale = 1;
min_scale = .5;
max_scale = 2;
delta_scale = .01;
//scale_spd = .005;


projmat = matrix_build_projection_ortho(proj_w*scale,proj_h*scale,1.0,32000.0);
viewmat = matrix_build_lookat(x,y,depth_cam,x,y,0,0,1,0);

camera_set_view_mat(cam,viewmat);
camera_set_proj_mat(cam, projmat);

view_camera[0] = cam;

