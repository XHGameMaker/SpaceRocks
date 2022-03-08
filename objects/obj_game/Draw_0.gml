/// @description Insert description here
// You can write your code in this editor



switch(room){
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_color(
			room_width / 2, 100, "SPACE ROCKS",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width / 2, 200,
			@"Score 1000 points to win!

			UP: move
			LEFT/RIGHT: change direction
			SPACE: shoot

			>> Press Enter to start <<
			"
		);
		draw_set_halign(fa_left);
		break;
		
	case rm_game_over:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
			room_width / 2, 100, "GAME OVER!",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width / 2, 200,
			" FINAL SCORE: " + string(score)
		);
		draw_text(
			room_width / 2, 300,
			" PRESS Enter to Restart"
		);
		draw_set_halign(fa_left);
		break;
	
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_lime;
		draw_text_transformed_color(
			room_width / 2, 100, "YOU WIN!",
			3, 3, 0, c, c, c, c, 1
		);
		draw_text(
			room_width / 2, 200,
			" Press Enter to start "
		);
		draw_set_halign(fa_left);
		break;
	
	case rm_game:
		draw_text(10, 10, "Score:" + string(score));
		draw_text(10, 25, "Lives:" + string(lives));
		break;
}
