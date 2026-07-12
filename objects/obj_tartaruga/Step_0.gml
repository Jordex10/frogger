/// @description Insert description here
// You can write your code in this editor





if(global.tempo = 0)
{
	image_speed = 0
}
else
{
	image_speed = 0.75 + global.nivel*global.crescmento_de_velocidade
}
hspeed = global.tempo*velocidade*(global.nivel*global.crescmento_de_velocidade)

if(x-16 > room_width){
	x -= (room_width + sprite_width);
}

if(x +24 < 0 - sprite_width and velocidade < 0){
	x += (room_width + sprite_width+24)


}