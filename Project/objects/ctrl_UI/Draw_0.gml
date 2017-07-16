/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,1);

draw_sprite_ext(spr_henchman_count_UI,0,x+cam_width/2+50,y,1,1,0,c_white,1);

var font = fnt_lives;
draw_set_font(font);
draw_text(x+cam_width/2+80 ,y, "x "+string(global.henchmen_count));

font = fnt_score;
draw_set_font(font);
draw_text(x+cam_width-100 ,y, score);



//Argument	Description
//x1	The x coordinate of the top left corner of the rectangle.
//y1	The y coordinate of the top left corner of the rectangle.
//x2	The x coordinate of the bottom right corner of the rectangle.
//y2	The y coordinate of the bottom right corner of the rectangle.


//draw inside bar
xoffset = 48;
yoffset = 8;

width = (cam_width/2 -48)*global.anger_level;

if(global.anger_level != 0)
{

draw_set_color(c_red);
draw_set_alpha(.6);
draw_rectangle(x+xoffset,y+yoffset, x+xoffset+width, y +sprite_height-8, false);
draw_set_color(c_white);
draw_set_alpha(1);

}