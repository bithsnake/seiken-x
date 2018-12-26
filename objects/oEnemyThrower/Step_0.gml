/// @description Insert description here
// You can write your code in this editor
vsp += oPlayer.grv;
firingDelay--;

if (place_meeting(x, y, oPlayer)) {
	if (oPlayer.invincibleTimer < 0) {
		oStatus.hp -= dmg;
		oPlayer.invincibleTimer = 100;
	}	
}

// horizontal collision
if (place_meeting(x + hsp, y, oWall)) {
	while(!place_meeting(x + sign(hsp), y, oWall)) {
		x = x + sign(hsp);
	}
	hsp = -hsp;
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

// throw grenade
if (firingDelay < 0 && distance_to_object(oPlayer) < 500) {
	firingDelay = 120;
	with(instance_create_layer(x, y, "bullets", oGrenadeEnemy)) {
		rndDir = random_range(-3, 3);
		rndSpd = random_range(-2, 2);
		speed = 5 + rndSpd;
		direction = point_direction(x, y, oPlayer.x, oPlayer.y) + rndDir;
	}
}

// look left or right

if (oPlayer.x < x) {
	image_xscale = -1;
} else {
	image_xscale = 1;	
}