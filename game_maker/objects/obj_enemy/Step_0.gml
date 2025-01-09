// // CODE
death();

set_depth_neg_bboxbottom();

if (collision_circle(x, y, detection_radius, obj_player, false, false) || hp < max_hp) {
	saw_player = true;
}

if (instance_exists(obj_player) && saw_player == true) {
	//speed = 0.3;
	
	//// Speichere aktuelle Position
	//mp_linear_step_object(obj_player.x, obj_player.y, movespeed, obj_wall);
	
	//Moves the Enemy to the Player position while avoiding obstacles
	movespeed = 0.5;
	mp_potential_step_object(obj_player.x, obj_player.y, movespeed, obj_wall);
	set_sprite();
} else {
	//If there is no Player, dont move
	movespeed = 0;
	set_sprite();
}

//set_sprite();

////Set depth
//depth = -bbox_bottom;

knockback();

// // FUNCTIONS

// movement

function set_sprite() {
	if (movespeed == 0) {
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
	
function knockback() {
	if (knockback_timer > 0) {
    // Prüfe Kollision mit einer Wand
    if (!place_meeting(x + knockback_x, y + knockback_y, obj_wall)) {
        x += knockback_x;
        y += knockback_y;
    }

    // Reduziere den Knockback-Timer
    knockback_timer -= 1;

    // Verlangsamt den Knockback-Effekt nach und nach
    knockback_x *= 0.9;
    knockback_y *= 0.9;

    // Stoppt den Knockback, wenn der Timer abläuft
    if (knockback_timer <= 0) {
        knockback_x = 0;
        knockback_y = 0;
    }
 }
}