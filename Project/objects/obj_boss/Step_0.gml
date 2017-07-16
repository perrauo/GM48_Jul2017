/// @description Insert description here
// You can write your code in this editor

event_inherited();

//FSM
//transitions
event_user(1);

//states
event_user(2);

dir_x = lengthdir_x(1,direction);
dir_y = lengthdir_y(1,direction);


//collision
if(place_meeting(x+hspeed,y,obj_floor_collider))
{
		while(!place_meeting(x+sign(hspeed),y,obj_floor_collider))
		{
			x+= sign(hspeed);
		}
		
		hspeed = 0;
}
		
//collision
if(place_meeting(x,y+vspeed,obj_floor_collider))
{
		while(!place_meeting(x,y +sign(vspeed),obj_floor_collider))
		{
			y+= sign(vspeed);
		}
		
		vspeed = 0;
}





//particles


var pt = global.pt_water1;

//get angle
dir = direction;

//light_beige = make_color_rgb(255, 255, 179);
color = make_color_rgb(224, 234, 244);

part_type_alpha3(pt,.03,1,.5);//set alpha
part_type_speed(pt,.1,2,0,.5);
part_type_color1(pt, color);
part_type_direction(pt, dir-10, dir+10,0,0);
part_type_life(pt, 10,20);
part_type_gravity(pt,.08, down);
part_type_sprite(pt,spr_part_rain,1,0,true);


part_emitter_region(global.ps_water, em_water,x-10,x-5,y,y,0,0);

if(alarm_get(11) == -1)
{	//set part alarm
	alarm_set(11, random_range(10,20));
}


