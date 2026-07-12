if (passei = false)
{
	global.concluido += 1
	global.pontos += 90;
	global.tempo = 0
	passei = true;
	
	obj_frogger.image_alpha = 0;
	audio_play_sound(snd_chegou,2,0,3)
	
	if(global.concluido < 5)
	{
		obj_frogger.alarm[2] = 90
	}
	else
	{
		obj_frogger.alarm[2] = 210
	}
	
}


if(global.concluido == 5 and !audio_is_playing(snd_passou_de_nivel))
{
	audio_pause_sound(snd_musica)
	audio_play_sound(snd_passou_de_nivel,3,0,10)
	global.vida++
	global.timer += 40
	alarm[1] = 210
	global.nivel++
	obj_mosca.comida = 0
	passei = false


if(!instance_exists(obj_cobra))
{
	instance_create_layer(264,120,"instances",obj_cobra)
}

}

