///// @description Emit particles given specs
///// @param type string

//type = argument0; //type of particle

////if(condition1)
//switch (EM_TY)
//{
//case PART_EMIT_TYPE.LAUNCHING:


//part_type_alpha3(global.ps_smoke,.03,.2,.5);//set alpha


//var _depth_smoke = choose(-59,-58);
//var _depth_fire = choose(-59,-58);

//part_system_depth(global.ps_launching, _depth_fire); //set depth of fire
//part_system_depth(global.ps_smoke, _depth_smoke); //set depth of smoke


//var c1=make_color_rgb(221,69,50);
//var c2=make_color_rgb(215,94,91);
//var c3=make_color_rgb(219,135,87);
//var c4=make_color_rgb(227,151,107);
//var c5=make_color_rgb(233,200,144);



////var color = choose(c1,c2,c3,c4,c5);
////part_type_color2(global.ps_launching,color); //change color
//part_type_color3(global.ps_launching,c1,c2,c3);

//part_emitter_region(global.ps_launching, global.em_launching,x,x+10,y,y+10,0,ps_distr_gaussian);
//part_emitter_burst(global.ps_launching, global.em_launching, global.pt_launching, part_amount_fire);


//part_emitter_region(global.ps_smoke, global.em_smoke,x-3,x+3,y-3,y+3,0,ps_distr_invgaussian);
//part_emitter_burst(global.ps_smoke, global.em_smoke, global.pt_smoke,part_amount_smoke);


//break;//
//case PART_EMIT_TYPE.SMOKE:

//part_type_alpha3(global.ps_smoke,.03,.2,.5);//set alpha

//var _depth_smoke = 1;
//part_system_depth(global.ps_smoke, _depth_smoke); //set depth of smoke

//part_type_speed(global.pt_smoke,.01,1.5,0,0);
//part_type_direction(global.pt_smoke, -curr_ship_angle,-curr_ship_angle,0,0);
//part_type_life(global.pt_smoke, 10,50);


//part_emitter_region(global.ps_smoke, global.em_smoke,x,x,y+5,y+5,0,0);
//part_emitter_burst(global.ps_smoke, global.em_smoke, global.pt_smoke,20);


//break;//

//case PART_EMIT_TYPE.LANDING:

//part_emitter_region(global.ps_launching, global.em_launching,x,x,y,y+20,0,0);
//part_emitter_burst(global.ps_launching, global.em_launching, global.pt_launching,20);


//break;//

//case noone:

////stop emmiting

//break;//


//}//end method