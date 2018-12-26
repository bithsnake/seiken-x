/// @description Insert description here
// You can write your code in this editor
//TEST
// collision with walls
var inst;
inst = instance_place(x, y, oWallBreakable);
if inst != noone
{    
	inst.hp -= dmg;
	IsHit = true;
	audio_play_sound(wEnemyHit, 1, 0);
	if (inst.hp == 0) {
		with (inst) {IsDead = true;}
	}
	instance_destroy();
}

if (place_meeting(x, y, oWall)) {
	instance_destroy();
}

// collision with enemies
inst = instance_place(x, y, oEnemies);
if inst != noone
{    
	audio_play_sound(wEnemyHit, 1, 0);
	inst.hp -= dmg;
	if (inst.hp == 0) {
		with (inst) {instance_destroy(); audio_play_sound(fxBrake,1000,false);}
	}
	instance_destroy();
}