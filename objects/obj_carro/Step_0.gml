


//Definindo a velocidade
hspeed = global.tempo*velocidade*(global.nivel*global.crescmento_de_velocidade)


//Definindo a cor



// Fazendo voltar para o começo
if(x > room_width + 8 and velocidade > 0)
{
	x = (0  - 8);
}

if(x < 0 - 8 and velocidade < 0 )
{
	x = room_width + 8
}

