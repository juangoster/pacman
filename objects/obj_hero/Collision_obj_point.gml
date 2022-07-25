/// @description cuando se come un punto
global.puntos += 10;

audio_play_sound(snd_chomp,10,false); //la prioridad en los sonidos se pone de 0 ninguna a 100 maxima

with(other){
	instance_destroy();
}

