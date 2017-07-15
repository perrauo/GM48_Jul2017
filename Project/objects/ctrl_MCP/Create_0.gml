/// @description Insert description here
// You can write your code in this editor

randomize();


#macro depth_background 400
#macro depth_middleground 0
#macro depth_foreground -400
#macro depth_UI -500
#macro depth_ctrl -600
#macro depth_cam -1000//depth cannot be lower than cam

#macro vec2 [0,0]
#macro vec2_x 0
#macro vec2_y 1

#macro grid_size 32
#macro offscreen 99999

#macro cam_width 640
#macro cam_height 480


global.main_cam = instance_create_depth(x,y, depth_ctrl, ctrl_cam);
global.ctrl_level_init = instance_create_depth(x,y, depth_ctrl, ctrl_level);

global.selected_henchman = noone;



//INIT Enums
enum WORLD_OBJECTS
{
	BEAR,
	KID,
	ENEMY//add diff types
}

