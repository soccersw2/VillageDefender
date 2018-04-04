/// @desc Draw Player & Shadow
if (room != rm_battle) && (room != rm_pause) {
	draw_sprite(spr_player_shadow, image_index, x, y);
	draw_self();
}
