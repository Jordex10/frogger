#region escolhendo o menu no jogo

if(keyboard_check_pressed(vk_down) and selecionado < 3)
{

	selecionado ++
	alarm[0] = 3
}
if(keyboard_check_pressed(vk_up) and selecionado > 0 and selecionado < 4)
{

	selecionado --
	alarm[0] = 3
}

if(keyboard_check_pressed(vk_up) and selecionado = 0 and alarm[0] < 1)
{

	selecionado = 3
	alarm[0] = 3
}

if(keyboard_check_pressed(vk_down) and selecionado = 3 and alarm[0] < 1)
{

	selecionado = 0
	alarm[0] = 3
}
#endregion 


#region escolhendo o menu nos ajustes

if(keyboard_check_pressed(vk_down) and selecionado > 3 and selecionado < 6 and global.pause = 1)
{

	selecionado ++
	alarm[0] = 3
}
if(keyboard_check_pressed(vk_up) and selecionado > 4 and selecionado <= 6 and global.pause = 1)
{

	selecionado --
	alarm[0] = 3
}

if(keyboard_check_pressed(vk_up) and selecionado = 4 and alarm[0] < 1 and global.pause = 1)
{

	selecionado = 6
	alarm[0] = 3
}

if(keyboard_check_pressed(vk_down) and selecionado = 6 and alarm[0] < 1 and global.pause = 0)
{

	selecionado = 4
	alarm[0] = 3
}
#endregion 




#region ações do menu 


// Resume
if(keyboard_check_pressed(vk_right) and selecionado ==0 and global.pause = 1 )
{
	alarm[0] = 50
	global.pause = 0
	global.tempo = 1
	selecionado = 0
	global.vida = 3
}

// Reiniciar
if(keyboard_check_pressed(vk_right) and selecionado == 1 and global.pause = 1 )
{
	audio_stop_sound(snd_musica)
	room_restart()
	global.pause = 0
	global.tempo =	1
	global.pontos = 0
	global.timer = 150
	global.vida = 3
	
	
}
//Ajustes
if(keyboard_check_pressed(vk_right) and selecionado == 2 and global.pause = 1 )
{
	selecionado = 4
}

#endregion


#region ações do menu de ajustes

//Aumentando o volume da musicas
if(keyboard_check_pressed(vk_right)and selecionado == 4 and alarm[0] <= 1 and global.volume_musica < 10)
{
	global.volume_musica++
audio_sound_gain(global.musica_id,global.volume_musica*0.1,0)
}

//Diminuindo o volume da musica
if(keyboard_check_pressed(vk_left)and selecionado == 4 and global.volume_musica > 0)
{
	global.volume_musica--
audio_sound_gain(global.musica_id,global.volume_musica*0.1,0)
	
} 








//Aumentando o volume dos Efeitos
if(keyboard_check_pressed(vk_right)and selecionado == 5 and alarm[0] <= 1 and global.volume_efeitos < 10)
{
	global.volume_efeitos++
audio_play_sound(snd_jump,1,0,0.1*global.volume_efeitos)
}

//Diminuindo o volume dos Efeitos
if(keyboard_check_pressed(vk_left)and selecionado == 5 and global.volume_efeitos > 0)
{
	global.volume_efeitos--
	audio_play_sound(snd_jump,1,0,0.1*global.volume_efeitos)
} 

if(keyboard_check_pressed(vk_escape) and selecionado > 3)
{
	selecionado = 0
}


//Colocando em Tela cheia
if(selecionado = 6 and (keyboard_check_pressed(vk_right) or keyboard_check_pressed(vk_left) ) and alarm[0] < 2 and global.tela_cheia == 0)

{
window_set_fullscreen(true)
alarm[0] = 5
global.tela_cheia = 1
}

//Colocando em modo Janela
if(selecionado = 6 and (keyboard_check_pressed(vk_right)or keyboard_check_pressed(vk_left) ) and alarm[0] < 2 and global.tela_cheia == 1)

{
window_set_fullscreen(false)
alarm[0] = 5
global.tela_cheia = 0
}

#endregion



 









