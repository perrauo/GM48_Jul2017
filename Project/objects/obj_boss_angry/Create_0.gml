/// @description Init State
// You can write your code in this editor

if(!audio_is_playing(sfx_angry))
audio_play_sound(sfx_angry,1,false);


//increase anger
global.anger_level+= .1;

if(global.anger_level >= 1)
{
	//STATE = BOSS_STATES.RAGE;
	instance_change(obj_boss_rage, true);	
	exit;
}


//make more red if angry
col_angry = merge_color(c_white,c_red, global.anger_level);


event_inherited();

//alarm set not angry
alarm_set(0, 60);
