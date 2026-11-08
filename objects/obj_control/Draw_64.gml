draw_set_halign(fa_left);

draw_set_colour(c_yellow);

draw_set_font(fnt_menu)

draw_text(28, y+16, "Pontos");
draw_text(1100, y+16, "Recorde");

draw_text(700, y+16, global.timer);

draw_set_colour(c_white);

var _str = string(global.pontos);


draw_text_transformed(28, 40, _str, 2, 2, 0);

var _str2 = string(global.recorde);


draw_text_transformed(1100, 40, _str2, 2, 2, 0);



if(mostrar_level == true)
{
draw_set_colour(c_red);
draw_set_font(fnt_menu_selecionado);
draw_text(500, 300, "Fase " + string(global.fase));

}

if(global.vida = 0)
{
	draw_set_colour(c_red);
	draw_set_font(Font2)
	draw_text(450,150,"GAME")
	draw_text(470,360,"OVER")
	
}

draw_set_font(fnt_3)
if(global.pause = 1)
{
	draw_text(x+400,y+200,"Jogo Pausado");
}

if(global.mostrar_tempo > 0)
{
	draw_set_font(fnt_menu)
	draw_set_colour(c_yellow)
	
	draw_set_halign(fa_right)
	draw_text(765,50,"+" + string (global.tempo_soma))
}

draw_set_font(-1)

