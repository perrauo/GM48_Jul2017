/// @description init leaderboard UI
// You can write your code in this editor

//clear leaderboard
//TODO remove
posx = x;
posy = y;

offset_y_size = 40;

input_text = ""; 
inputAmount = 0;

//TF properties
///name
name_box_alpha= .5;

box_width = 300; //length of the textfield 
box_height = 60; //height of the tf
name_maxchar = 10;

//caret blink
caret_alpha = 1;

//timers (caret blink speed)
timer1 = 0;
lim1 = 360;

keyboard_lastkey = -1;