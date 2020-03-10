draw_self();

if(bulletHit > 0) {
	bulletHit--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}

