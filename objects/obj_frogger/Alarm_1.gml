/// @description Movimentação
// You can write your code in this editor




//Morte pela água
if (instance_place(x,y,obj_agua)and !instance_place(x,y,obj_tartaruga) and !instance_place(x,y,obj_tronco) and global.tempo = 1)
{

	morte()
}

if (instance_place(x,y,obj_morte) and !instance_place(x,y,obj_tronco) and global.tempo = 1)
{
	
	morte()
}


if(instance_place(x,y,obj_final) and global.tempo == 1)
{
	var _inst = instance_place(x,y,obj_final)
	
	if(_inst.image_index = 1 )
	{
		
		morte()
	}
}

speed = 0

obj_frogger.image_xscale = 1
obj_frogger.image_yscale = 1