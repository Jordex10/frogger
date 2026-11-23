
posicao = 216
comecou = false // Controla se o personagem pode se mover
mostrar_level = true // Exibe a fase atual
alarm[0] = 90;


alarm[4] = 1800;
layer_set_visible("game_over",0)
layer_set_visible("fundo",0)

if(file_exists("save.sav"))
{
	ini_open("save.sav")
	global.recorde = ini_read_real("pontuacao","recorde",0)
	ini_close();

}



alarm[3] = 60
