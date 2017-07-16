/// @description how to
// You can write your code in this editor

var font = fnt_title;
draw_set_color(c_white);
draw_set_font(font);
draw_text(posx , posy-80, "HOW TO PLAY");

draw_set_color(color_menu);
font = fnt_howto;
draw_set_font(font);

s = "Collect as much money from customers by selling them your crap without them catching you."+
"\n"+
"\n"+
"CONTROLS"+
"\n"+
"\n"+ 
"* Move character with left mouse button."+
"\n"+
"* Set up a kiosk with right mouse button."+
"\n"+
"* Approach the edge of the screen to escape the town."+
"\n"+
"* Once on the map screen, click on a neighbouring city to pursue your shenanigans.";

draw_text(posx, posy, s);
draw_set_color(c_white);



