/// @description Insert description here
// You can write your code in this editor

///toggle fullscreen
if(keyboard_check_pressed(ord("F")))
window_set_fullscreen(!window_get_fullscreen());


if(keyboard_check_pressed(ord("D")))
room_goto(rm_cinematic);

if(keyboard_check_pressed(ord("E")))
room_goto(rm_game);


if(keyboard_check_pressed(ord("P")))
{
	highscore_clear();
	highscore_add("NIMSTRING", 300.00);
	highscore_add("PLUMBUS", 250.00);
	highscore_add("DINGLEBOP", 200.00);
	highscore_add("WONDERCRAP", 230.00);
	highscore_add("MCFLURX", 150.00);
	highscore_add("BLAMFS", 140.00);
	highscore_add("TOFU", 120.00);
	highscore_add("BAGEL", 80.00);
	highscore_add("RADIOSHARK", 60.00);
	highscore_add("HIPPIETOY", 20.00);
}



//exit
if(keyboard_check_pressed(vk_escape))
game_end();

