/// @description poner puntaje

//pintar el puntaje
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_arcade);
draw_text(32,16, "SCORE: " + string(global.puntos))

//pintar las vidas

draw_text(room_width/2, 16, "LIVES: ");
for (var i = 0; i < global.vidas; i += 1){
	draw_sprite_stretched(spr_hero_right, 3, room_width/2 + string_width("LIVES: ") + (i*35), 16, 32, 32)
}

//pintar el ready

if(audio_is_playing(snd_intro)){
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(c_yellow)
	draw_set_font(fnt_game_over)
	draw_text(room_width/2,room_height/2, "READY!")
}

//pintar el game over
if (global.vidas<0){
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(c_yellow)
	draw_set_font(fnt_game_over)
	draw_text(room_width/2,room_height/2, "GAME OVER")
}

if (global.bonus){
	draw_sprite(spr_cherry_points, 0, room_width-64, 0)
}