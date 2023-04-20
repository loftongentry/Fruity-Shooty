if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rm_start:
			room_goto(rm_game);
			break;
		
		case rm_win:
		case rm_gameover:
			game_restart();
			break;
	}
}
if(room == rm_game){
	if(score >= 1000){
		room_goto(rm_win);
		audio_play_sound(snd_win, 1, false)
	}

	if(lives <= 0){
		room_goto(rm_gameover);
		audio_play_sound(snd_gameover, 2, false);
	}
}

var game_width = 650;
var game_height = 650;

var screen_width = display_get_width();
var screen_height = display_get_height();
if(screen_width <= 768){
	var scale_factor = min(screen_width / game_width, screen_height / game_height)

	var new_game_width = round(scale_factor * game_width);
	var new_game_height = round(scale_factor * game_height);

	window_set_size(new_game_width, new_game_height);
}
