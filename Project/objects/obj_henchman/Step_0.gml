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
if(place_meeting(x+hspeed,y,obj_collider))
{
		while(!place_meeting(x+sign(hspeed),y,obj_collider))
		{
			x+= sign(hspeed);
		}
		
		hspeed = 0;
}
		
//collision
if(place_meeting(x,y+vspeed,obj_collider))
{
		while(!place_meeting(x,y +sign(vspeed),obj_collider))
		{
			y+= sign(vspeed);
		}
		
		vspeed = 0;
}

