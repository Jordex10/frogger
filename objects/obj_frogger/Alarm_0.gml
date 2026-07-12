/// @description reiniciar quando morre ou game
// You can write your code in this editor


if(global.vida > 1)
{

global.vida -= 1;
obj_frogger.x = 96;
obj_frogger.y = 216;
global.tempo = 1
image_angle = 0

}

else
{
	
	global.vida = 0;
	game_over()
	
	
}