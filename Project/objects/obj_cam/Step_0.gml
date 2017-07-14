/// @description Insert description here
// You can write your code in this editor



////Zoom in n out
if(zooming_enabled)
{
if(mouse_wheel_up() || mouse_wheel_down())
{
	var delta_scale;
	if(mouse_wheel_up())
		delta_scale = -.1;
		else
		delta_scale = .1;

	//clamp the scale
	scale = clamp(scale+delta_scale,.5,2);			
		
	projmat = matrix_build_projection_ortho(proj_w*scale,proj_h*scale,1,32000.0);
	camera_set_proj_mat(cam, projmat);
}
}

