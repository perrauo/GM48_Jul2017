/// @description leave room
// You can write your code in this editor

if(global.henchmen_count <= 0)
{
	audio_stop_all();
	audio_play_sound(mus_menu,1,true);

	room_goto(rm_name_input);
	
}
else
room_goto(rm_game);
	
