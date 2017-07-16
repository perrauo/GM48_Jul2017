/// @description how to
// You can write your code in this editor

var font = fnt_title;
draw_set_color(c_white);
draw_set_font(font);
draw_text(posx , posy-80, "HOW TO PLAY");

draw_set_color(c_menu0);
font = fnt_howto;
draw_set_font(font);


//HOW TO PLAY

//Click on puddles and then the henchman (or vice versa) to have them 
//protect the boss. To open the umbrella, click on the boss and then a 
//henchman to have them come forward.

//Do whatever you must to keep the boss dry!



s = "Do whatever you must to keep the boss dry!"+
"\n"+
"\n"+
"CONTROLS"+
"\n"+
"\n"+ 
"Click on a henchman and assign him a task by selecting an interactive element"+
"\n"+
"To open the umbrella, click on a henchman and the boss."+
"\n"+
"Select a henchman and guide him along the sidewalk by holding the left mouse button";


draw_text(posx, posy, s);
draw_set_color(c_white);



