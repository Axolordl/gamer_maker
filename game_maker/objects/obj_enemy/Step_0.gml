// // CODE
death();

if (collision_circle(x, y, detection_radius, obj_player, false, false)) {
	saw_player = true;
}

if (instance_exists(obj_player) && saw_player == true) {
	speed = 0.3;
	mp_linear_step_object(obj_player.x, obj_player.y, speed, obj_wall);
} else {
	speed = 0;
}
set_sprite();

// // FUNCTIONS

// movement

function set_sprite() {
	if (speed == 0) {
		face = IDLE;
	} else {
		direct = point_direction(x, y, obj_player.x, obj_player.y);
		if (direct >= 90 && direct <= 270) {
			face = LEFT;
		} else {
			face = RIGHT;
		}
	}
	sprite_index = sprite[face];
}

function death() {
	if (hp <= 0) {
	 instance_destroy();
	}
}