/// @desc Every Step
get_input();
depth = -y;

if (room != rm_battle) && (room != rm_pause) && (!instance_exists(obj_fade)) {
	script_execute(state);
} else {
	image_speed = 0;
}

// Pause
if (!instance_exists(obj_fade)) {
	if (pauseKey) && (room != rm_pause) && (room != rm_battle) {
		fadeout(rm_pause, c_white, 0.05, x, y);
	}
	if (pauseKey) && (room == rm_pause) {
		fadeout(last_room, c_white, 0.05, x, y);
	}
}
