/// @description Insert description here
// You can write your code in this editor


audio_stop_all();

if(!audio_is_playing(sfx_gunshot))
audio_play_sound(sfx_gunshot,1,false);
