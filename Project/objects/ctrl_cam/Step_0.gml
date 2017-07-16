/// @description Insert description here
// You can write your code in this editor

projmat = matrix_build_projection_ortho(proj_w*scale,proj_h*scale,1.0,32000.0);
viewmat = matrix_build_lookat(x,y,depth,x,y,depth_background,0,1,0);

camera_set_view_mat(cam,viewmat);
camera_set_proj_mat(cam, projmat);

