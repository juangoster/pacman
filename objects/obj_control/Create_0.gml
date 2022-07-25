/// @description variables globales del juego
audio_play_sound(snd_intro,10,false);
instance_deactivate_object(obj_ghost);

alarm[0] = room_speed*10;

global.puntos = 0;
global.vidas = 3;
global.power = false;
global.bonus = false;
global.golpe = false;


