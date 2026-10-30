///// @description Faz passar de fase
global.concluido = 0
switch(global.fase)
			{
				
				
				case 2: room_goto(rm_stage_2);
				break;
				
				case 3: room_goto(rm_stage_3);
				break;
				
						
				case 4: room_goto(rm_stage_4);
				break;
				
				case 5: room_goto(rm_stage_5);
				break;
				
				default: 
				global.nivel += 0.1
				room_restart()

				
				break;
			}
			global.timer += 30