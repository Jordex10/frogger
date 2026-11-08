randomize()
global.vida = 3
global.pontos = 0;
global.nivel = 1;
global.fase = 1;
global.tempo = 1;
global.concluido = 0
global.timer = 90
global.crescmento_de_velocidade = 0.5
global.recorde = 0
global.summon = 0
global.summon_timer = 1600
global.pause = 0
global.bateu_record = 0
global.pause = 0
global.tempo_antes  = 0
global.tela_cheia = 0
global.mostrar_tempo = 0
global.tempo_soma = 0

//Variavies de Ajustes
global.volume_musica = 10;
global.volume_efeitos = 10;



//Morrer pelo tempo
function morte()
{
	

	
	global.tempo = 0
	obj_frogger.speed = 0
	audio_play_sound(snd_morte,1,false,0.1*global.volume_efeitos)
	alarm[0] = 90
	
}

function chegou(obj_final)
{
	obj_control.comecou = 0
	obj_frogger.image_alpha = 0;
	//Nem todos estão preenchidos
	if( global.concluido < 4)
	{
	
	
		global.concluido += 1
		global.pontos += 90;
		number_score(90,obj_frogger)
	
		
	

	
	
	
		audio_play_sound(snd_chegou,2,0,3)
		obj_control.alarm[5] = 90 // Retorna o alvo para a posição de origem
	}
		else
		{audio_stop_all()
			audio_play_sound(snd_passou_de_nivel,1,0,3,1)
			global.fase ++
			global.pontos += 90
			
			obj_control.alarm[6] = 90
				
		}
	

	}	


function game_over()
{

audio_stop_sound(snd_musica)
audio_play_sound(snd_game_over,2,0,1)

}

