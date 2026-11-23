///// @description Concede pontos de acordo com o tempo

if( global.timer > 0)
{
	

var pitch = random_range(0.8,1) 
audio_play_sound(snd_score_time,1,0,global.volume_efeitos/15,0,pitch)




global.pontos += 5
global.timer -= 1
number_score(5,obj_frogger)
alarm[6] = 8

}

else
{
alarm[7] = 60
 }