/// @description un poco de IA para los fantasmas
if place_snapped(64,64){
	if hspeed == 0{
		if random(3) < 1 && place_free(x-1,y){
			hspeed = -velocidad;
			vspeed = 0;
		}
		if random(3) < 1 && place_free(x+1,y){
			hspeed = velocidad;
			vspeed = 0;
		}
	}
	else
	{
		if random(3) < 1 && place_free(x,y+1){
			hspeed = 0;
			vspeed = velocidad;
		}
		if random(3) < 1 && place_free(x,y-1){
			hspeed = 0;
			vspeed = -velocidad;
		}	
	}
}


