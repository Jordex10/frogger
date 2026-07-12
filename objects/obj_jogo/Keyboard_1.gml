
if(global.recorde <= global.pontos)
{
if(file_exists("save.sav")) 
{
file_delete("save.sav")
ini_open("save.sav");
ini_write_real("pontuacao","recorde",global.recorde)
ini_close()
}
}
if(global.vida = 0 and audio_is_playing(snd_game_over)=0)
{
	room_restart()
	global.tempo = 1
	global.vida = 3
	global.timer = 120
	global.pontos = 0
	global.concluido = 0
	global.bateu_record = 0
	global.nivel = 1
}

