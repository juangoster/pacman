/// @description crear instancia de cerezas
if (global.vidas < 0){exit}
instance_create_layer(obj_hero.xstart,obj_hero.ystart,"ly_map",obj_bonus);
alarm[0] = room_speed*15;

