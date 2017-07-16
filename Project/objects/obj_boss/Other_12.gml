/// @description FSM switch


switch (STATE)
{
	case BOSS_STATES.STOP:
	instance_change(obj_boss_stop, true);
	break;
	
	case BOSS_STATES.FORWARD:
	instance_change(obj_boss_forward, true);
	break;
	
	case BOSS_STATES.ANGRY:
	instance_change(obj_boss_angry, true);
	break;
	
	case BOSS_STATES.RAGE:
	instance_change(obj_boss_rage, true);
	break;
	
	
}