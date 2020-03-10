x = obj_player.x-2;							// assigning gun's position x to be equal to the player's position x.
y = obj_player.y+7;							// assigning gun's position y to be equal to the player's position y.

image_angle = point_direction(x,y, mouse_x, mouse_y);

bulletDelay = bulletDelay - 1;
if (mouse_check_button(mb_left)) && (bulletDelay < 0) {
	bulletDelay = 5;
	audio_play_sound(sound_shoot,5,false);
	with (instance_create_layer(x,y,"Bullets", obj_bullet)) {
		speed = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
}
