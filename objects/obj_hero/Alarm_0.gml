/// @description casi termina el powerup

global.power = false;
with (obj_ghost){
	if (sprite_index == spr_ghost_weak){
	image_speed = 1;
	}
}

alarm[1] = room_speed*3


