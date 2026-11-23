


//Definindo a velocidade
hspeed = global.tempo*velocidade*(global.nivel*global.crescmento_de_velocidade)
image_speed = global.tempo*global.nivel

if(instance_place(x,y,obj_frogger))
{
	if x > obj_frogger.x
		image_xscale = 1
		
	else
	image_xscale = -1
	
	
	exit
}






if( hspeed > 0)
{
	image_xscale = -1
}

else

{
	image_xscale =1
}





if( (x < 0 or x > room_width) and alarm[0] == -1)
{
	
	
	alarm[0] = Timer	
}



