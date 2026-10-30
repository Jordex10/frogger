
#region Movimentação do Tronco
hspeed = global.tempo*velocidade*(global.nivel*global.crescmento_de_velocidade)


if(hspeed > 0 and (x - (image_xscale* sprite_width/2)) > room_width)
{
	x -= (room_width + sprite_width*image_xscale)
if(global.summon >= global.summon_timer)
	{
		instance_create_layer(x,y,"primeiro",obj_frogger_1)
	global.summon = 0

	}
	
}


if(hspeed < 0 and (x + sprite_width/2) < 0)
{
	
	
	x += (room_width+ sprite_width)
	if(global.summon >= global.summon_timer)
	{
		instance_create_layer(x,y,"primeiro",obj_frogger_1)
		global.summon = 0
	
	}
}










if(hspeed < 0)

{
image_angle =180
}
if(hspeed > 0)

{
image_angle =0
}




#endregion