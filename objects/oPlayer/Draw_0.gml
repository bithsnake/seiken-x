draw_self();
if (playerHurt) {
	if (timer mod 1 == 0 ) {sprite_index = sprite_index; image_alpha = choose(0.5,1);}
} else image_alpha = 1;

draw_set_color(c_white);
draw_text(x,bbox_top-30, "vsp: " + string(vsp))
draw_text(x,bbox_top-40, "hsp: " + string(hsp))
draw_text(x,bbox_top-60, "image_speed: " + string(image_speed));
draw_text(x,bbox_top-80, "image_xscale: " + string(image_xscale));