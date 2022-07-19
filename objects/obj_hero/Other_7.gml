/// @description cuando termina la animación de la muerte

if (sprite_index == spr_hero_dead){
	direction = 0;
	image_speed = 0;
	sprite_index = spr_hero_right;
	x = xstart;
	y = ystart;
	image_index = 0;
	global.golpe = false;
}


