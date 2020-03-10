// Gravity:
vertical_speed = vertical_speed + theGravity;

// Horizontal Collision:
if (place_meeting(x+horizontal_speed,y,obj_wall)) {								// if there is a collison,
	while (!place_meeting (x+sign(horizontal_speed), y, obj_wall)) {			// while there isn't a collision
		x = x + sign(horizontal_speed);											// move towards the object as much as possible	
	}
																				// else:
	horizontal_speed = -horizontal_speed;										// set horizontal speed to 0
}
x = x + horizontal_speed;

// Vertical Collision:
if (place_meeting(x,y+vertical_speed,obj_wall)) {								// if there is a collison,
	while (!place_meeting (x, y+sign(vertical_speed), obj_wall)) {				// while there isn't a collision
		y = y + sign(vertical_speed);											// move towards the object as much as possible	
	}
																				// else:
	vertical_speed = 0;															// set horizontal speed to 0
}
y = y + vertical_speed;

// Animation:
if (!place_meeting(x, y+1, obj_wall)) {											// if the player is not on an object
	sprite_index = spr_enemy_air;												// set player sprite to be "spr_player_air"
	image_speed = 0;															// set image speed to be 0.
	if (sign(vertical_speed) > 0) image_index = 1; else image_index = 0;		// if the player is in the air, select image 0.
}																				// else, select image 1.
else {
	image_speed = 1;												
	if (horizontal_speed == 0) {												// if the player, is not moving,	
		sprite_index = spr_enemy;												// set sprite to be "spr_player"
	}
	else {																		// if the player is moving,
		sprite_index = spr_enemy_run;											// set the player sprite to be "spr_player_run"
	}
}

if (horizontal_speed != 0) image_xscale = sign(horizontal_speed);				// player sprite looks left if moving left
																				// and looks right if moving right.


