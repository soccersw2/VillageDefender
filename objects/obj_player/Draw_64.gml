/// @desc Draw the GUI
if (room != rm_battle) && (room != rm_pause) {
	// Draw Basic Variables
	draw_set_font(fnt_small);
	draw_text(16, 8, "Health: " + string(p_health) + "/" + string(p_maxhealth));
	draw_text(16, 32, "Level: " + string(p_level));
	
	// Draw Healthbar
	draw_rectangle(164, 12, 164+(p_maxhealth*4), 28, false);
	var healthbar = 100*p_maxhealth;
	draw_healthbar(164, 12, 164+(p_health*4), 28,
p_health*healthbar, c_black, c_red, c_green, 0, 1, 1);
} else if (room == rm_pause) {
	// Draw Stats Box
	draw_rectangle(room_width*0.4, room_height*0.5,
room_width*1.1, room_height*1.65, false);
	draw_set_color(c_black);
	draw_rectangle(room_width*0.4, room_height*0.5,
room_width*1.1, room_height*1.65, true);
	// Draw Player
	draw_set_color(c_white);
	draw_sprite_ext(spr_player_down, 0, room_width*1.35, room_height,
12, 12, 0, c_white, 1);
	// Draw Stats
	draw_set_font(fnt_small);
	draw_set_color(c_black);
	draw_text(room_width*0.45, room_height*0.55, "Level: " + string(p_level));
	draw_text(room_width*0.45, room_height*0.70, 
"Health: " + string(p_health) + "/" + string(p_maxhealth));
	draw_text(room_width*0.45, room_height*0.85, "Attack: " + string(p_attack));
	draw_text(room_width*0.45, room_height, "Speed: " + string(p_speed));
	draw_text(room_width*0.45, room_height*1.15, 
"EXP: " + string(p_exp) + "/" + string(p_maxexp));
	draw_set_color(c_white);
}