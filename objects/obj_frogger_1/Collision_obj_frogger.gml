
obj_control.alarm[0] = 2400
global.summon_sapo = 0




if(cor == 0)
{
	global.vida ++;
	audio_play_sound(snd_sapoamarelo,2,0,global.volume_efeitos/10)
	instance_destroy(self)
}

if(cor == 1)
{
	global.timer +=15;
	audio_play_sound(snd_sapoamarelo,2,0,global.volume_efeitos/10)
		global.mostrar_tempo = 120
		global.tempo_soma = 15
		instance_destroy(self)
}


