

#region Movimentação

if( global.tempo == 1 and image_xscale == 1 and obj_control.comecou == 1 )
{
if ((keyboard_check_released(ord("W")) or keyboard_check_released(vk_up)))
{
	
	direction = 90;
	speed = velocidade;
	alarm[1] = 16/velocidade;
	obj_frogger.image_xscale = 1.25
	obj_frogger.image_yscale = 1.25
	obj_frogger.image_angle = 0
audio_play_sound(snd_jump,1,0,0.1*global.volume_efeitos,0,random_range(0.9,1.25))
}
if ((keyboard_check_released(ord("S")) or keyboard_check_released(vk_down))  && y < 210)
{ 
	
	direction = 270;
	speed = velocidade;
	alarm[1] = 16/velocidade;
	obj_frogger.image_xscale = 1.25;
	obj_frogger.image_yscale = 1.25;
	obj_frogger.image_angle = 180;
	audio_play_sound(snd_jump,1,0,0.1*global.volume_efeitos,0,random_range(0.9,1.25))
} 
if (obj_menu_1.alarm[0] < 2 and (keyboard_check_released(ord("A")) or keyboard_check_released(vk_left)))
{ 

	direction = 180;
	speed = velocidade; 
	alarm[1] = 16/velocidade;
	obj_frogger.image_angle = 90;
	obj_frogger.image_xscale = 1.25;
	obj_frogger.image_yscale = 1.25;
	audio_play_sound(snd_jump,1,0,0.1*global.volume_efeitos,0,random_range(0.9,1.25))
	
}
if ((keyboard_check_released(ord("D")) or keyboard_check_released(vk_right)))
{	
	direction = 0
	speed = velocidade
	alarm[1] = 16/velocidade;
	obj_frogger.image_angle = 270
	obj_frogger.image_xscale = 1.25
	obj_frogger.image_yscale = 1.25
	audio_play_sound(snd_jump,1,0,0.1*global.volume_efeitos,0,random_range(0.9,1.25))
}

}
#endregion
//Mover com o tronco
if (instance_place(x,y,obj_tronco)and image_xscale == 1)
{
	var _inst = instance_place(x,y,obj_tronco)
	obj_frogger.hspeed = _inst.hspeed
}


#region Pontos por avançar e pela mosca



#endregion
//Morrer pelo tempo
if(global.timer == 0 and global.tempo = 1)
{

global.vida = -1

morte()
	
}



#region Mortes

//Morte por: Carro, Cobra e Parede e sair do Cenário
if(place_meeting(x,y,obj_morte)and global.tempo = 1 and  image_xscale == 1 and image_alpha = 1)
{

	morte()
}

//Morte por sair do Cenário
if(( x > room_width + 4 or x < 0 - 4 or y > room_height +4 or y < 0 -4) and global.tempo ==1 )
{

	morte()
}

//Morte Pela água
if(instance_place(x,y,obj_agua) and image_xscale =1 and seguro = 0 and global.tempo = 1)
{
morte()	


}

//Ficando seguro quando em cima da tartaruga
if(instance_place(x,y,obj_tartaruga) and obj_tartaruga.image_index < 16)
{
	seguro = 1
}
// Deixando de ficar seguro
else if(!instance_place(x,y,obj_tronco))
{
	seguro = 0
}

//Ficando seguro em cma do tronco
if(instance_place(x,y,obj_tronco))
{
	seguro = 1
}


#endregion








//Mover com a Tartaruga
if (instance_place(x,y,obj_tartaruga)and image_xscale == 1)
{
	var _inst = instance_place(x,y,obj_tartaruga)
	obj_frogger.hspeed = _inst.hspeed
}
if(global.tempo == 0)
{
	hspeed = 0
}

#region Mudando de cor pela vida
if(global.vida >= 3)
{
	image_index = 0
}
if(global.vida == 2)
{
	image_index =	1
}
if(global.vida == 1)
{
	image_index = 2
}

#endregion

