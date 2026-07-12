/// @description Insert description here
// You can write your code in this editor


hspeed =  global.tempo * velocidade * 0.15 * global.nivel*1.35;

if(x > room_width){
	x -= (room_width + sprite_width);
}

if(x < 0 - sprite_width and velocidade < 0){
	x += (room_width + sprite_width);
}


