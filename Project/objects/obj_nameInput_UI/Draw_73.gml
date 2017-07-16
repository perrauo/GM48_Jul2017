/// @description how to
// You can write your code in this editor

var font = fnt_title;
draw_set_font(font);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(posx , posy-80, "ENTER YOUR NAME");

w = c_white;
b = c_black;

draw_set_font(fnt_leaderboard);

//drawing prod name
draw_set_alpha(name_box_alpha);
draw_rectangle_color(posx, posy, posx + box_width, posy + box_height, w,w,w,w, false);

draw_text_color(posx+10, posy+box_height/4, input_text, w,w,w,w,1); 
draw_set_alpha(1); //reset norma alpha


//draw caret
var caret_offsetx = string_width(input_text);

draw_set_alpha(caret_alpha);//make caret blink
draw_text_color(posx+10+caret_offsetx, posy+box_height/4, "|", w,w,w,w,caret_alpha); 
draw_set_alpha(1); //reset norma alpha