/// @description Insert description here
// You can write your code in this editor

event_inherited();

x -= global.scroll_spd;

if(place_meeting(x,y, obj_car) && !busy)
{
	if(alarm_get(2) == -1)
	{
	var splash = instance_create_depth(x,y, depth+1,obj_puddle_splash);
	splash.user = self;
	splash.offset_x = (wet_offset_x/2)-5;
	splash.offset_y = -10;
	//restor offset
	alarm_set(2,30);
	}
	
	//change wet zone offset
	wet_offset_y = -120;
}

//update offset
wet_zone.offset_y = wet_offset_y;