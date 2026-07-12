if (passei = false)
{
	image_index = 0;
}
else
{
	image_index = 1
}

if(global.concluido = 6 and obj_frogger.y > 100 )
{
	passei = false
	
	if(!instance_exists(obj_cobra))
	{
		instance_create_layer(260,119,"primeiro",obj_cobra)
	}

	
}

show_debug_message(global.concluido)