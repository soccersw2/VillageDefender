/// move_state
// Get Direction
dir = point_direction(0, 0, xaxis, yaxis);

// Get Speed
if (shiftKey) spd = 2;


// Get Length
if (xaxis == 0) && (yaxis == 0) {
	len = 0;
} else {
	len = spd;
	get_face();
}

// Get the speed variables
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Horizontal Collisions
if (place_meeting(x+hspd, y, obj_wall) || place_meeting(x+hspd, y, obj_enemy)) {
	while(!place_meeting(x+sign(hspd), y, obj_wall) || place_meeting(x+hspd, y, obj_enemy)) {
		x += sign(hspd);
	}
	hspd = 0;
}

x += hspd;

// Vertical Collisions
if (place_meeting(x, y+vspd, obj_wall) || place_meeting(x+vspd, y, obj_enemy)) {
	while(!place_meeting(x, y+sign(vspd), obj_wall) || place_meeting(x+vspd, y, obj_enemy)) {
		y += sign(vspd);
	}
	vspd = 0;
}

y += vspd;

// Check for battle encounter
if (len == 1) {
	var rng = irandom(steps);
	if (rng == steps) && (steps <= 850) {
		fadeout(rm_battle, c_white, 0.025, x, y);
		steps = 1000;
	} else {
		steps -= 1;
	}
}

// Sprites
image_speed = 0.5;
if (len == 0) {
	image_index = 0;
}

// Get Direction
switch(face) {
	case 0:
		sprite_index = RIGHT;
		break;
		
	case 1:
		sprite_index = UPRIGHT;
		break;
		
	case 2:
		sprite_index = UP;
		break;
		
	case 3:
		sprite_index = UPLEFT;
		break;
		
	case 4:
		sprite_index = LEFT;
		break;
	
	case 5:
		sprite_index = DOWNLEFT;
		break;
		
	case 6:
		sprite_index = DOWN;
		break;
		
	case 7:
		sprite_index = DOWNRIGHT;
		break;
}
