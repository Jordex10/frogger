
obj_jogo.alarm[0] = 2400
global.summon_sapo = 0

audio_play_sound(snd_sapoamarelo,2,0,2)


if(cor == 0)
{
	global.vida ++;
}

if(cor == 1)
{
	global.timer +=20;
}

if(cor == 2)
{
	global.pontos += 70;
}

instance_destroy(self)