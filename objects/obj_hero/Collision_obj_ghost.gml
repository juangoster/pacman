/// @description cuando el heroe toca al fantasma
if (other.sprite_index == spr_ghost_weak && x == other.x && y == other.y) {
	global.puntos += 200;
	audio_play_sound(snd_eat_enemy,50,false);
	with(other){
		x = xstart;
		y = ystart;
		velocidad = 4;
		speed = velocidad;
		sprite_index = spr_ghost;
		image_index = col;
	}
}else{
	if (global.golpe == false && x == other.x && y == other.y){
		audio_stop_all();
		audio_play_sound(snd_dead_hero,50,false);
		global.vidas -= 1;
		global.puntos -= 100;
		speed = 0;
		sprite_index = spr_hero_dead;
		image_speed = 1;
		with (obj_bonus){
		instance_destroy()
		}
		global.golpe = true;
	}


}


