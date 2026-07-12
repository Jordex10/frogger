alarm[0] = 1800;
layer_set_visible("game_over",0)
layer_set_visible("fundo",0)

if(file_exists("save.sav"))
{
	ini_open("save.sav")
	global.recorde = ini_read_real("pontuacao","recorde",0)
	ini_close();

}

 global.musica_id = audio_play_sound(snd_musica,1,true)
audio_sound_gain(global.musica_id,global.volume_musica*0.1,0)
alarm[3] = 60
