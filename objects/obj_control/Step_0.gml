#region salvando permanentemente o reorde
if(global.pontos > global.recorde)
{
	global.recorde = global.pontos
	global.bateu_record = 1
}
#endregion



if(keyboard_check_released(vk_space)and obj_frogger.alarm[0] < 0 and comecou = true)
{
if(global.pause = 0)
{
global.tempo = 0	
global.pause = 1
}
else
{
global.tempo = 1
global.pause = 0
}
}


//Pontos por avançar
if(obj_frogger.y < posicao)
{
	posicao -= 16
	global.pontos += 10;
}

