function number_score(valor, object)
{

fonte = noone // Fonte do texto, dã
time_to_destroy = 45 // Tempo até a valor sumir
velocity = noone // Velocidade no eixo y do indicador ao ser criado 
velocitx = noone // Velocidade do eixo x do indicador ao ser criado
target = noone // Objeto responsável por chamar o obj_number, serve para evitar que junte muitos indicadores em m mesmo objeto



	
	
	
    var numero = noone; 

    with (obj_number)
    {
        if (target == object) // Identifica se já existe algum obj_number ligado ao objeto
        {
            numero = id; 
            break;
        }
    }

    if (numero != noone) // Se já existir, reinicia a posição e soma o valor anterior
    {
        numero.score_valor += valor;
        numero.x = object.x;
        numero.y = object.y +5 ;
        numero.alarm[0] = time_to_destroy;  
		numero.image_alpha = 1
        return;
    }
	
	//Se não existir, cria um 

    var inst = instance_create_layer(object.x, object.y, "hud", obj_number); //Cria uma instância e define seus valores
    inst.target = object;
    inst.score_valor = valor;
    inst.velocity = -1;
    inst.velocitx = 0;
    inst.alarm[0] = time_to_destroy;
}