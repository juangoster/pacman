/// @description cuando come la cereza
global.puntos += 200;
global.bonus = true;
audio_play_sound(snd_eat_bonus,10,false);

with(other){
	instance_destroy();
}
