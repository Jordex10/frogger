var target_x = obj_frogger.x - 48
var target_y = obj_frogger.y -48

// Suaviza o movimento da câmera
var smooth_factor = 0.5;


var new_x = lerp(camera_get_view_x(view_camera[0]), target_x, smooth_factor);
var new_y = lerp(camera_get_view_y(view_camera[0]), target_y, smooth_factor/10);

x = new_x
y = new_y

if(new_x > 80)
{
	new_x = 80
}
if(new_x < 0)
{
	new_x = 0
}

if(new_y > 134)
{
	new_y = 134
}


if(new_y < 16)
{
	new_y = 16
}




camera_set_view_pos(view_camera[0],new_x, new_y);
