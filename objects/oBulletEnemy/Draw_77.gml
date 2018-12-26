/// @description Insert description here
// You can write your code in this editor

// collision with player
inst = instance_place(x, y, oPlayer);
if inst != noone
{    
	oStatus.hp -= dmg;
	oPlayer.invincibleTimer = 50;
	if (inst.hp == 0) {
		room_restart();
	}
	instance_destroy();
}