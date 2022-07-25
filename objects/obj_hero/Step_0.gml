/// @description movimiento del personaje
if (global.golpe) || audio_is_playing(snd_intro) {exit}
//si se oprime la tecla de la derecha
if keyboard_check(vk_right) && place_free(x+1,y) && place_snapped(32,32)
{
	// direction funciona con los grados de una escuadra 0 es a la derecha 90 arriba 180 izquierda 270 abajo
	direction = 0;
	speed = velocidad; //v es la velocidad base que se le asigno al create
}
if keyboard_check(vk_left) && place_free(x-1,y) && place_snapped(32,32)
{
	direction = 180;
	speed = velocidad; 
}
if keyboard_check(vk_up) && place_free(x,y-1) && place_snapped(32,32)
{
	direction = 90;
	speed = velocidad; 
}
if keyboard_check(vk_down) && place_free(x,y+1) && place_snapped(32,32)
{
	direction = 270;
	speed = velocidad; 
}
//verificar la dirección para que se anime el sprite
if speed > 0 {
	image_speed = 1;	
}else{
	image_speed = 0;
	image_index = 0;
}

switch (direction) {
	case 0:
	sprite_index = spr_hero_right;
	break;
	case 90:
	sprite_index = spr_hero_up;
	break;
	case 180:
	sprite_index = spr_hero_left;
	break;
	case 270:
	sprite_index = spr_hero_down;
	break;
}