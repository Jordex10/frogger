
//Mover com o tronco
if (instance_place(x,y,obj_tronco)and image_xscale == 1)
{
	var _inst = instance_place(x,y,obj_tronco)
	obj_frogger_1.hspeed = _inst.hspeed
}



show_debug_message(cor)