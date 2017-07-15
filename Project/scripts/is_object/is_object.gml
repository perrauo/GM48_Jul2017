/// @description Check if given is a object
/// @param is object
/// @param a object
/// @return bool

var obj = argument0;
var _obj = argument1;

if(object_is_ancestor(obj.object_index, _obj))
return true;
else
if (obj.object_index == _obj)
return true;
else 
return false;