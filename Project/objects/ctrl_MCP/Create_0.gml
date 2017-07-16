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
#macro down point_direction(0,0,0,1)

#macro grid_size 32
#macro offscreen 99999

#macro cam_width 640
#macro cam_height 480

#macro c_menu0 make_color_rgb(90,120,126)
#macro c_menu1 make_color_rgb(145,197,176)
#macro c_menu2 make_color_rgb(130,217,182)

global.selected_henchman = noone;
global.game_difficulty = 0;
global.player = "";
score = 0;

global.rain_active = false;
global.henchmen_count = 5;
global.anger_level = 0;

///play menu mus
audio_stop_all();
audio_play_sound(mus_menu,1,true);



