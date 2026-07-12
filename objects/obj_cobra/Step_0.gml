/// @description Insert description here
// You can write your code in this editor


	
if(obj_frogger.x -16 > obj_cobra.x and global.tempo = 1 )
{
	
	hspeed = global.tempo*velocidade*(global.nivel*global.crescmento_de_velocidade)
	image_xscale = -1

}

else if ( obj_frogger.x + 16 < obj_cobra.x and global.tempo == 1)
{

	hspeed = -global.tempo*velocidade*(global.nivel*global.crescmento_de_velocidade)
	image_xscale = 1

}

if(global.tempo = 0)
{
	obj_cobra.speed = 0
	image_speed = 0
	
}
else
{
	image_speed = 1
}
