/// @description FSM universal transitions
// You can write your code in this editor


with(bottom_collider)
{	
	if(place_meeting(x,y,obj_puddle))
	{
			other.STATE = BOSS_STATES.ANGRY;
	}
	
}





