
if(keyboard_check_pressed(vk_down) and selecionado == 0 and alarm[0] < 3){

selecionado = 1
alarm[0] = 3
}

if(keyboard_check_pressed(vk_down) and selecionado = 1 and alarm[0] < 3){

selecionado = 0
alarm[0] = 3
}

show_debug_message(selecionado)



if(keyboard_check_pressed(vk_right) and selecionado ==0 and room == rm_menu )
{
	room_goto(rm_jogo)
}

if(keyboard_check_pressed(vk_right) and selecionado ==1 )
{
	selecionado = 2;
}
if(keyboard_check_pressed(vk_escape) and selecionado >1)
{
	
	selecionado = 0
}
#region volume musica

if(keyboard_check_pressed(vk_right)and selecionado = 0 and alarm[0] <= 1 and global.volume_musica < 10)
{
	global.volume_musica++
}
if(keyboard_check_pressed(vk_left)and selecionado = 0  and global.volume_musica > 0)
{
	global.volume_musica--
}
#endregion



 
if(keyboard_check_pressed(vk_right)and selecionado == 3 and alarm[0] <= 1 and global.volume_efeitos < 10)
{
	global.volume_efeitos++
audio_play_sound(snd_jump,1,0,0.1*global.volume_efeitos)
}
if(keyboard_check_pressed(vk_left)and selecionado == 3 and global.volume_efeitos > 0)
{
	global.volume_efeitos--
	audio_play_sound(snd_jump,1,0,0.1*global.volume_efeitos)
} 

if(keyboard_check_pressed(vk_right)and selecionado == 2 and alarm[0] <= 1 and global.volume_musica < 10)
{
	global.volume_musica++
}
if(keyboard_check_pressed(vk_left)and selecionado == 2 and global.volume_musica > 0)
{
	global.volume_musica--
} 








if(keyboard_check_pressed(vk_down) and selecionado <=4 and selecionado >1)
{

	selecionado ++
	alarm[0] = 3
}
if(keyboard_check_pressed(vk_up) and selecionado >2)
{

	selecionado --
	alarm[0] = 3
}

if(keyboard_check_pressed(vk_up) and selecionado =2 and alarm[0] < 1)
{

	selecionado = 4
	alarm[0] = 3
}

if  (selecionado == 5 )
{
	selecionado = 2
}


if(selecionado = 4 and (keyboard_check_pressed(vk_right) or keyboard_check_pressed(vk_left) ) and alarm[0] < 2 and global.tela_cheia == 0)

{
window_set_fullscreen(true)
alarm[0] = 5
global.tela_cheia = 1
}
if(selecionado = 4 and (keyboard_check_pressed(vk_right)or keyboard_check_pressed(vk_left) ) and alarm[0] < 2 and global.tela_cheia == 1)

{
window_set_fullscreen(false)
alarm[0] = 5
global.tela_cheia = 0
}