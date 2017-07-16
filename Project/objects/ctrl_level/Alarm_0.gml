/// @description Spawn Cars
// You can write your code in this editor

if(!instance_exists(obj_car))
instance_create_depth(offset_x, ((room_height/4)*3)+50, depth_foreground, obj_car);

//Start Alarm for car
alarm_set(0, random_range(min_car_wait_time, max_car_wait_time));