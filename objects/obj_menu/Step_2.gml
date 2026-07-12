//Aumentando som do jogo
if(keyboard_check_pressed(vk_right) and selecionado = 0 and ajustes = 1 and global.volume_musica < 10)
{
global.volume_musica++;
}

if(keyboard_check_pressed(vk_left) and selecionado = 0 and ajustes = 1 and global.volume_musica > 0)
{
global.volume_musica--;
}