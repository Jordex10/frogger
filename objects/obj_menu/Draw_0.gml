



#region menu principal
if(selecionado == 0)
{
draw_set_colour(c_red);
draw_set_font(fnt_menu_selecionado)
draw_text(x+500,y+200,"Novo Jogo");

draw_set_font(fnt_menu)
draw_set_colour(c_white);
draw_text(x+500,y+300,"Ajustes");
}


if(selecionado == 1)
{
draw_set_colour(c_red);
draw_set_font(fnt_menu_selecionado)
draw_text(x+500,y+300,"Ajustes");

draw_set_font(fnt_menu)
draw_set_colour(c_white);
draw_text(x+500,y+200,"Novo Jogo");
}

#endregion 



	
//Musica Selecionado
if(selecionado == 2){
	
draw_set_colour(c_red);
draw_set_font(fnt_menu_selecionado)
draw_text(x+300,y+100,"Volume da Musica");
draw_text(x+800,y+100,global.volume_musica);


draw_set_font(fnt_menu)
draw_set_colour(c_white);



draw_text(x+300,y+200,"Volume dos Efeitos");
draw_text(x+800,y+200,global.volume_efeitos);


if(global.tela_cheia = 1)
{
draw_text(x+300,y+300,"Tela Cheia");
}
	else
	{
		draw_text(x+300,y+300,"Modo Janela");
	}

	
	

	
}
	

// Efeitos Selecionados
if(selecionado ==3){
	
draw_set_colour(c_red);
draw_set_font(fnt_menu_selecionado)

draw_text(x+300,y+200,"Volume dos Efeitos");
draw_text(x+800,y+200,global.volume_efeitos);



draw_set_font(fnt_menu)
draw_set_colour(c_white);

draw_text(x+300,y+100,"Volume da Musica");
draw_text(x+800,y+100,global.volume_musica);

if(global.tela_cheia = 1)
{
draw_text(x+300,y+300,"Tela Cheia");
}
	else
	{
		draw_text(x+300,y+300,"Modo Janela");
	}	
	
}

if(selecionado ==4){
	
draw_set_colour(c_red);
draw_set_font(fnt_menu_selecionado)

if(global.tela_cheia = 1)
{
draw_text(x+300,y+300,"Tela Cheia");
}
	else
	{
		draw_text(x+300,y+300,"Modo Janela");
	}	
	
	
	
draw_set_font(fnt_menu)
draw_set_colour(c_white);


draw_text(x+300,y+200,"Volume dos Efeitos");
draw_text(x+800,y+200,global.volume_efeitos);


draw_text(x+300,y+100,"Volume da Musica");
draw_text(x+800,y+100,global.volume_musica);
}





	
	





  