


//Definindo a velocidade
hspeed = global.tempo * velocidade * 0.4 * global.nivel;


//Definindo a cor

if( velocidade > 0)
{
	image_blend = c_aqua
	image_angle = 180;
}

// Fazendo voltar para o começo
if(x > room_width + 8 and velocidade > 0)
{
	x = (0  - 8);
}

if(x < 0 - 8 and velocidade < 0 )
{
	x = room_width + 8
}

