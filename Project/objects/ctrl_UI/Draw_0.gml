/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,1);

//draw inside bar
var font = fnt_score;
draw_set_font(font);
draw_text(x+cam_width-100 ,y, score);



//Argument	Description
//x1	The x coordinate of the top left corner of the rectangle.
//y1	The y coordinate of the top left corner of the rectangle.
//x2	The x coordinate of the bottom right corner of the rectangle.
//y2	The y coordinate of the bottom right corner of the rectangle.

xoffset = 48;
yoffset = 8;

width = (cam_width/2 -48)*global.anger_level;

draw_set_color(c_red);
draw_set_alpha(.6);
draw_rectangle(x+xoffset,y+yoffset, x+xoffset+width, y +sprite_height-8, false);
draw_set_color(c_white);
draw_set_alpha(1);