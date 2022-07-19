/// @description cuando adquiere el infinite powa
global.power = true;
global.puntos += 50;

with(obj_ghost){
	sprite_index = spr_ghost_weak;
	image_speed = 0;
	image_index = 0;
	velocidad = 2;
	speed = 2;
};

with(other){
	instance_destroy();
}

