/// @description cuando el heroe toca al fantasma
if (global.power) {
	global.puntos += 100;
	with(other){
		x = xstart;
		y = ystart;
		velocidad = 4;
		speed = velocidad;
		sprite_index = spr_ghost;
		image_index = col;		
	}
}else{
	if (global.golpe == false){
		global.vidas -= 1;
		global.puntos -= 100;
		speed = 0;
		sprite_index = spr_hero_dead;
		image_speed = 1;
		global.golpe = true;
	}


}


