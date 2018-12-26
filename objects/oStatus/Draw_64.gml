/// @description Insert description here
// You can write your code in this editor

if(instance_exists(oPlayer)) {
	draw_set_color(c_white);
	draw_text(view_camera[0]+206, view_camera[0]+400, "HP: " + string(hp));
}

if (hp > 100) {
	hp = 100;
}

if (hp < 0) {
	room_restart();
}