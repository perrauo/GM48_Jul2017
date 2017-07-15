/// @description Insert description here
// You can write your code in this editor


start_scroll_spd = 2;

//section1, 2, 3//
global.difficulty = .1;
global.section_count = 0;
global.scroll_spd = 2;
global.lv_sections = ds_list_create();


offset_x = 0;

//get tilemap ids

//section1
var layer_id_instances = layer_get_id("lay_instances_sec1");
var layer_id_sidewalk = layer_get_id("lay_til_walkable_sec1");
var layer_id_road = layer_get_id("lay_til_road_sec1");
section1 = instance_create_depth(0,0,depth_ctrl,obj_level_section);

//init sec prop
section1.inst_layer_id = layer_id_instances;
section1.tm_layer_id_sidewalk = layer_id_sidewalk;
section1.tm_layer_id_road = layer_id_road;

//add to ds
ds_list_add(global.lv_sections, section1);

//adjust offset
offset_x += cam_width; 


//section2
var layer_id_instances = layer_get_id("lay_instances_sec2");
var layer_id_sidewalk = layer_get_id("lay_til_walkable_sec2");
var layer_id_road = layer_get_id("lay_til_road_sec2");

section2 = instance_create_depth(0,0,depth_ctrl,obj_level_section);

//init sec prop
section2.inst_layer_id = layer_id_instances;
section2.tm_layer_id_sidewalk = layer_id_sidewalk;
section2.tm_layer_id_road = layer_id_road;
section2.offset_x = offset_x;

//add to ds
ds_list_add(global.lv_sections, section2);

//adjust offset
offset_x += cam_width; 


//section3
var layer_id_instances = layer_get_id("lay_instances_sec3");
var layer_id_sidewalk = layer_get_id("lay_til_walkable_sec3");
var layer_id_road = layer_get_id("lay_til_road_sec3");

section3 = instance_create_depth(0,0,depth_ctrl,obj_level_section);
//init sec prop
section3.inst_layer_id = layer_id_instances;
section3.tm_layer_id_sidewalk = layer_id_sidewalk;
section3.tm_layer_id_road = layer_id_road;
section3.offset_x = offset_x;

//add to ds
ds_list_add(global.lv_sections, section3);




min_car_wait_time = 60;
max_car_wait_time = 360;
//TODO SET WARNING ALARM FIRST
//Start Alarm for car
alarm_set(0, random_range(min_car_wait_time, max_car_wait_time));




