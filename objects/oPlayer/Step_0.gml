// get input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;
hsp = move * walksp;
vsp = vsp + grv;

// horizontal collision
if (place_meeting(x + hsp, y, oWall)) {
	while(!place_meeting(x + sign(hsp), y, oWall)) {
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

// vertical collision
if (place_meeting(x, y + vsp, oWall)) {
	while(!place_meeting(x, y + sign(vsp), oWall)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

// jump!
if (key_jump && vsp == 0) {
	vsp = vsp - 8;
	extra_jump = 1;
}

// jump again!
if (key_jump && extra_jump == 1 && vsp >= -1) {
	vsp = vsp - 8;
	extra_jump = 0;
}


// ANIMATION:
// jump
if (vsp < 0) {
	sprite_index = sPlayerJump;
	image_speed = 0;
} else {
	sprite_index = sPlayer;
	image_speed = 0;
}

// flip left / right
if (move != 0) {
	pmove = move;
	if (move == -1) {
	image_xscale = -1;
	} else {
		image_xscale = 1;
	}
}


show_debug_overlay(true);