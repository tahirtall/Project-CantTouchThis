// Updating the destionation here for the camera to mainPlayer.
if (instance_exists(mainPlayer)) {
	xDir = mainPlayer.x;
	yDir = mainPlayer.y;
}

// Update the object position
x += (xDir - x) / 25;
y += (yDir - y) / 25;

x = clamp(x, view_w_half, room_width-view_w_half);
y = clamp(y, view_h_half, room_height-view_h_half);

// Update camera view
camera_set_view_pos(cam, x-view_w_half, y-view_h_half);


