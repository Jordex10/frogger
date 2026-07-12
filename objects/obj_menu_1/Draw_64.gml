

if(global.pause == 1){
	

#region Mostrando menu principal
if(selecionado == 0)
{
draw_set_colour(c_red);
draw_set_font(fnt_menu_selecionado)
draw_text(x,y,"Continuar");

draw_set_font(fnt_menu)
draw_set_colour(c_white);
draw_text(x,y+70,"Reiniciar");

draw_text(x,y+140,"Ajustes");

draw_text(x,y+210,"Sair");
}


if(selecionado == 1)
{
draw_set_colour(c_red);
draw_set_font(fnt_menu_selecionado)
draw_text(x,y+70,"Reiniciar");


draw_set_font(fnt_menu)
draw_set_colour(c_white);
draw_text(x,y,"Continuar");

draw_text(x,y+140,"Ajustes");

draw_text(x,y+210,"Sair");
}


if(selecionado == 2)
{
draw_set_colour(c_red);
draw_set_font(fnt_menu_selecionado)

draw_text(x,y+140,"Ajustes");

draw_set_font(fnt_menu)
draw_set_colour(c_white);
draw_text(x,y,"Continuar");

draw_text(x,y+70,"Reiniciar");

draw_text(x,y+210,"Sair");
}

if(selecionado == 3)
{
draw_set_colour(c_red);
draw_set_font(fnt_menu_selecionado)


draw_text(x,y+210,"Sair");

draw_set_font(fnt_menu)
draw_set_colour(c_white);
draw_text(x,y,"Continuar");

draw_text(x,y+140,"Ajustes");

draw_text(x,y+70,"Reiniciar");
}
#endregion


#region Mostrando o menu de ajustes

//Musica Selecionado
if(selecionado == 4){
	
draw_set_colour(c_red);
draw_set_font(fnt_menu_selecionado)
draw_text(x,y,"Volume da Musica");
draw_text(x+600,y,global.volume_musica);


draw_set_font(fnt_menu)
draw_set_colour(c_white);



draw_text(x,y+100,"Volume dos Efeitos");
draw_text(x+500,y+100,global.volume_efeitos);


if(global.tela_cheia = 1)
{
draw_text(x,y+200,"Tela Cheia");
}
	else
	{
		draw_text(x,y+200,"Modo Janela");
	}

}
	

// Efeitos Selecionados
if(selecionado ==5){
	
draw_set_colour(c_red);
draw_set_font(fnt_menu_selecionado)

draw_text(x,y+100,"Volume dos Efeitos");
draw_text(x+600,y+100,global.volume_efeitos);



draw_set_font(fnt_menu)
draw_set_colour(c_white);

draw_text(x,y,"Volume da Musica");
draw_text(x+500,y,global.volume_musica);

if(global.tela_cheia = 1)
{
draw_text(x,y+200,"Tela Cheia");
}
	else
	{
		draw_text(x,y+200,"Modo Janela");
	}	
}

if(selecionado ==6){
	
draw_set_colour(c_red);
draw_set_font(fnt_menu_selecionado)

if(global.tela_cheia = 1)
{
draw_text(x,y+200,"Tela Cheia");
}
	else
	{
		draw_text(x,y+200,"Modo Janela");
	}	
	
draw_set_font(fnt_menu)
draw_set_colour(c_white);


draw_text(x,y+100,"Volume dos Efeitos");
draw_text(x+500,y+100,global.volume_efeitos);


draw_text(x,y,"Volume da Musica");
draw_text(x+500,y,global.volume_musica);
}
#endregion

}







	





  