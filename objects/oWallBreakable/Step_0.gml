if(!IsDead) {
	if(IsHit) {
		image_index = 1;
	}
} else {image_index = 0; IsHit = false;}


if (IsDead) {
	image_alpha = Approach(image_alpha,0,0.2);
	if(image_alpha <= 0) {instance_destroy(); audio_play_sound(fxExplode,1000,false);}
}
