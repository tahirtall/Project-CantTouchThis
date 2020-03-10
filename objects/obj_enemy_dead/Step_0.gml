if (done == 0) {
	vertical_speed = vertical_speed + theGravity;

	// Horizontal Collision:
	if (place_meeting(x+horizontal_speed,y,obj_wall)) {								// if there is a collison,
		while (!place_meeting (x+sign(horizontal_speed), y, obj_wall)) {				// while there isn't a collision
			x = x + sign(horizontal_speed);											// move towards the object as much as possible	
		}
																					// else:
		horizontal_speed = 0;														// set horizontal speed to 0
	}
	x = x + horizontal_speed;

	// Vertical Collision:
	if (place_meeting(x,y+vertical_speed,obj_wall)) {								// if there is a collison,
		if (vertical_speed > 0) {
			done = 1;
			image_index = 0;
		}
		while (!place_meeting (x, y+sign(vertical_speed), obj_wall)) {				// while there isn't a collision
			y = y + sign(vertical_speed);											// move towards the object as much as possible	
		}
																					// else:
		vertical_speed = 0;															// set horizontal speed to 0
	}
	y = y + vertical_speed;

}