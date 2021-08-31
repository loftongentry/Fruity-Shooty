switch(room){
	case rm_game:
		draw_text(20,20, "SCORE: " + string(score));
		draw_text(20,40, "LIVES: " + string(lives));
		break;
		
	case rm_start:
		draw_set_halign(fa_center)
		draw_text_transformed_color(
		room_width/2, 100, "FRUITY SHOOTY", 3, 3, 0, c_yellow, c_red, c_aqua, c_green, 1);
		
		draw_text(room_width/2, 200, 
		"\nScore 1000 points to win" + "\n" + "\nUP: Accelerate" +	"\nLEFT/RIGHT: Change Direction" + "\nSPACE: Shoot" + "\n" + "\n>> PRESS ENTER TO START <<");
		draw_set_halign(fa_left)
		break;
		
	case rm_win:
		draw_set_halign(fa_center)
		draw_text_transformed_color(room_width/2, 200, "YOU WON!", 3, 3, 0, c_yellow, c_red, c_aqua, c_green, 1);
		draw_text(room_width/2, 300, ">> PRESS ENTER TO RESTART <<");
		draw_set_halign(fa_left)
		break;
		
	case rm_gameover:
		var c = c_red;
		draw_set_halign(fa_center)
		draw_text_transformed_color(room_width/2, 200, "YOU DIED!", 3, 3, 0, c, c, c, c, 1);
		draw_text(room_width/2, 300, ">> PRESS ENTER TO RESTART <<");
		draw_set_halign(fa_left)
		break;
}