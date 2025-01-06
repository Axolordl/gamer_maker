// // CODE
death();

if (collision_circle(x, y, detection_radius, obj_player, false, false)) {
	saw_player = true;
}

if (instance_exists(obj_player) && saw_player == true) {
	set_sprite();
	speed = 0.3;
	mp_linear_step_object(obj_player.x, obj_player.y, speed, obj_wall);
} else {
	set_sprite(IDLE);
}

// // FUNCTIONS

// movement

function set_sprite(face="") {
	direct = point_direction(x, y, obj_player.x, obj_player.y);
	show_debug_message(direct);
	
	if face != IDLE {
		if direct >= 0 {
			if direct >= 90 {
				if direct >= 270 {
					face = RIGHT
				} else {face = LEFT}
			} else {face = RIGHT;}
		}
	}
	sprite_index = sprite[face]
}

function death() {
	if (hp <= 0) {
	 instance_destroy();
	}
}