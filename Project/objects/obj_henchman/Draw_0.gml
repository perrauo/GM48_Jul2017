/// @description Insert description here
// You can write your code in this editor
event_inherited();

c = noone;
switch(STATE)
{
case HENCHMAN_STATES.ONTASK:
c = c_red;
break;

case HENCHMAN_STATES.FOLLOW:
c = c_white;
break;
}

draw_sprite_ext(sprite_index,image_index,x,y,scale,scale,0,c,1);
