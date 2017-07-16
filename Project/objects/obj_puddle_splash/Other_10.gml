/// @description Insert description here
// You can write your code in this editor


//get angle
dir = point_direction(x, y, dir_x, dir_y);

var pt = global.pt_water1;

//get angle
dir = point_direction(x, y, dir_x, dir_y);

//light_beige = make_color_rgb(255, 255, 179);
color = make_color_rgb(224, 234, 244);

part_type_alpha3(pt,.03,1,.5);//set alpha
part_type_speed(pt,.1,2,0,.5);
part_type_color1(pt, color);
part_type_direction(pt, (-down)-10, (-down)+10, 0,0);
part_type_life(pt, 10,20);
part_type_gravity(pt,.08, down);
part_type_size(pt,1,8,0,0);
part_type_sprite(pt,spr_part_rain,1,0,true);


part_emitter_region(global.ps_water, em_water,0,sprite_width,-sprite_height,y-20,0,0);
part_emitter_burst(global.ps_water, em_water, global.pt_water1,random_range(5,20));
