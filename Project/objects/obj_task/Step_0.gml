/// @description Determine if task is busy
// You can write your code in this editor
event_inherited();

//if car splash task
if(TYPE = TASK_TYPES.CARSPLASH)
{
//determine if task is busy
with(trigger_zone)
{
var _hencheman = noone;//it
var henchemen = instance_place_multiple(x,y, obj_henchman);

if(henchemen != noone)
{
	var size = ds_list_size(henchemen);
	for(var i = 0; i<size; i++)
   {
   _hencheman = ds_list_find_value(henchemen,i);
	
  if(_hencheman.curr_task == other)
  {
	
	other.hencheman = _hencheman;
	other.busy = true;
	break;
  }
 
	}
}//end 
else
{
	other.hencheman = noone
	other.busy = false;
}
}
}
else
{//determine if task is busy
var _hencheman = noone;//it
var henchemen = instance_place_multiple(x,y, obj_henchman);

if(henchemen != noone)
{
	var size = ds_list_size(henchemen);
	for(var i = 0; i<size; i++)
   {
   _hencheman = ds_list_find_value(henchemen,i);
	
  if(_hencheman.curr_task == self)
  {
	hencheman = _hencheman;
	busy = true;
	break;
  }
 
	}
}//end 
else
{
	hencheman = noone
	busy = false;
}
}


//IF BUSY PREVENT INTERACTRION
if(busy)
{
	selected = false;
	interactive = false;
}
else
{
	interactive = true;
}


