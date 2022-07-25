/// @description controlador del juego

#region // control de intro
if !(audio_is_playing(snd_intro)){
	instance_activate_object(obj_ghost);
}
#endregion

#region // destruir todo para el game over
if (global.vidas < 0){
	with(obj_bonus){
		instance_destroy();
	}
	with(obj_ghost){
		instance_destroy();
	}
	with(obj_hero){
		instance_destroy();
	}
	with(obj_point){
		instance_destroy();
	}
	with(obj_power){
		instance_destroy();
	}
	with(obj_wall){
		instance_destroy();
	}
}
#endregion

#region // verifica si se gana o pierde
if (instance_number(obj_point) == 0 && instance_number(obj_power) == 0 && global.vidas >= 0){
	if (room_next(room) != -1){
		audio_stop_all();
		room_goto_next();
	}else{
		audio_stop_all();
		room_goto(rm_game_over);
		instance_destroy();
	}
}

#endregion