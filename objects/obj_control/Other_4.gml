/// @description vuelve a iniciar el nivel

if (room == Level_1){exit;}

audio_play_sound(snd_intro,10,false);
instance_deactivate_object(obj_ghost);

alarm[0] = room_speed*5;


global.power = false;
global.bonus = false;
global.golpe = false;