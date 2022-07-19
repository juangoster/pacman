	/// @description cuando se crea el fantasma
sprite_index = spr_ghost;
image_speed = 0;
image_index = 0;
velocidad = 4;

//inicia el movimiento de los fantasmas
direction = choose(0,90,180,270); //escoge un valor de los que se le da de forma aleatoria
motion_set(direction,velocidad); //como se mueve con dirección y velocidad


