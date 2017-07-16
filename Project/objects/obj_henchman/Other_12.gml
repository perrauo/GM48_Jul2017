/// @description FSM switch


switch (STATE)
{
	case HENCHMAN_STATES.FOLLOW:
	instance_change(obj_henchman_follow, true);
	break;
	
	case HENCHMAN_STATES.ONTASK:
	instance_change(obj_henchman_onTask, true);
	break;
	
	case HENCHMAN_STATES.FAILED:
	instance_change(obj_henchman_failed, true);
	break;
	
	case HENCHMAN_STATES.GUIDE:
	instance_change(obj_henchman_guide, true);
	break;
	
			
		
	///ON TASK SPECIFIC
	case HENCHMAN_STATES.SPRAWL:
	instance_change(obj_henchman_sprawl, true);
	break;
	
	case HENCHMAN_STATES.UMBRELLA:
	instance_change(obj_henchman_umbrella, true);
	break;
	
	case HENCHMAN_STATES.HOLDING:
	instance_change(obj_henchman_holding, true);
	break;
	
	
	
	
}