/// @description cuando adquiere el infinite powa
alarm[0] = room_speed*5; //esto setea una alarma a 5 segundos
global.power = true;
global.puntos += 50;
audio_play_sound(snd_eat_bonus,50,false);

with(obj_ghost){
	sprite_index = spr_ghost_weak;
	image_speed = 0;
	image_index = 0;
	velocidad = 2;
	speed = velocidad;
};

with(other){
	instance_destroy();
}

