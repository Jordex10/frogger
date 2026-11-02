//// @description Retorna o jogador para a posição de origem

obj_frogger.x = 128
obj_frogger.y = 216
global.tempo = 1
posicao = 216

obj_frogger.image_alpha = 1
	obj_control.comecou = 1
if(!audio_is_playing(snd_musica))
{
	audio_play_sound(snd_musica,1,1)
}