/// @description Movimentação
// You can write your code in this editor






speed = 0

obj_frogger.image_xscale = 1
obj_frogger.image_yscale = 1

if(place_meeting(x,y,obj_mosca))
{
var _mosca = instance_place(x,y,obj_mosca)

instance_destroy(_mosca)	

number_score(100, obj_frogger)
global.pontos += 100
}

if( place_meeting(x,y,obj_frogger_1))

{
	var _sapo = instance_place(x,y,obj_frogger_1)
	
	if(_sapo.cor == 2)
	{
		
		number_score(70, obj_frogger)
		global.pontos += 70
		instance_destroy(_sapo)
		audio_play_sound(snd_sapoamarelo,2,0,2)
	
	}
}

//Pontos por avançar
if(y < obj_control.posicao)
{

	obj_control.posicao -= 16
	number_score(10,obj_frogger)
	global.pontos += 10;
	
}

if( instance_place(x,y,obj_final))
{
	
	var _final = instance_place(x,y,obj_final)
if (_final.passei == false) // Caso ele colida com o sapo e ainda não tenha chegado nesse local
{
	_final.passei = true
	chegou(_final)
}

else if (_final.passei = false and obj_frogger.image_alpha == 1 and global.tempo == 0)
{
	morte()
}
	
	
}
