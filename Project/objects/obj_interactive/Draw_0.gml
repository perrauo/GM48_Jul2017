/// @description Insert description here
// You can write your code in this editor

var offset_y = -sprite_height;
var sin_spd = 1000;

if(selected)
draw_sprite_ext(spr_arrow,image_index,x,y+offset_y+sin(alarm_get(0)),1,1,0,c_white,1);

