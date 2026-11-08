///// @description Concede pontos de acordo com o tempo

if( global.timer > 0)
{
var pitch = random_range(0.8,1)

global.pontos += 5
global.timer -= 1
number_score(5,obj_frogger)
alarm[6] = 5

}

else
{
alarm[7] = 30
 }