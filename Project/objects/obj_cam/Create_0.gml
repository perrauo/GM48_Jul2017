/// @description Init cam
cam = camera_create();

//properties
proj_w = 640;
proj_h = 480;
scale = 2;
zooming_enabled = false;

projmat = matrix_build_projection_ortho(proj_w*scale,proj_h*scale,1.0,32000.0);
viewmat = matrix_build_lookat(x,y,-100,x,y,0,0,1,0);

camera_set_view_mat(cam,viewmat);
camera_set_proj_mat(cam, projmat);

view_camera[0] = cam;


