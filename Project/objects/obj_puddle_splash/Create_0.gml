/// @description Insert description here
// You can write your code in this editor

if(is_between(x,0,cam_width))
{

if(!audio_is_playing(sfx_splash2))
audio_play_sound(sfx_splash2,1,false);
}

alpha = 1;

user = noone;
offset_x = 0;
offset_y = 0;

//create emiter
em_water = part_emitter_create(global.ps_water);