/// @description Insert description here
// You can write your code in this editor

if(room = rm_game)
{

global.main_cam = instance_create_depth(x,y, depth_cam, ctrl_cam);
global.ctrl_level_init = instance_create_depth(x,y, depth_ctrl, ctrl_level);
global.cursor = instance_create_depth(x,y, depth_ctrl, obj_cursor);
global.ctrl_weather = instance_create_depth(x,y, depth_ctrl, ctrl_weather);

//reset anger_level

global.anger_level = 0;
global.rain_active = false;




//create henchmen
for(var i = 0; i< global.henchmen_count; i++)
{
	var xpos = 0;
	var ypos = 0;
	
	xpos = random_range(obj_boss.x-50, obj_boss.x+50);
	ypos = random_range(obj_boss.y-50, obj_boss.y+50);
	
	ypos = clamp(ypos, 260, 300);
	
	instance_create_depth(xpos,ypos,depth_foreground,obj_henchman);

}



}