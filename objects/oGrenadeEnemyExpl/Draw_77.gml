/// @description Insert description here
// You can write your code in this editor

timer--;

image_alpha = timer/60;

// collision with player
inst = instance_place(x, y, oPlayer);
if inst != noone
{   
	if (hit == false) {
		oStatus.hp -= dmg;
		oPlayer.invincibleTimer = 100;
		hit = true;
	}
}

if (timer < 0) {
	instance_destroy();
}