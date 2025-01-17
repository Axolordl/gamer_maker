// // CODE

//death();
set_depth_neg_bboxbottom();
//detect_Player_inRadius();

//if (instance_exists(obj_player) && saw_player == true) {
//	//Moves the Enemy to the Player position while avoiding obstacles
//	movespeed = 0.5;
//	mp_potential_step_object(obj_player.x, obj_player.y, movespeed, obj_wall);
//	set_sprite();
//} else {
//	//If there is no Player, dont move
//	movespeed = 0;
//	set_sprite();
//}

knockback();





// // FUNCTIONS

// movement

function set_sprite() {
	
	if (movespeed == 0) {
		face = IDLE;
	} else {
		var direct = point_direction(x, y, obj_player.x, obj_player.y);
		if (direct >= 90 && direct <= 270) {
			face = LEFT;
		} else {
			face = RIGHT;
		}
	}
	sprite_index = sprite[face];
}

//function death() {
//	if (hp <= 0) {
//	 instance_destroy();
//	}
//}
	
function knockback() {
	if (knockback_timer > 0) {
		
    // Prüfe Kollision mit einer Wand
    if (!place_meeting(x + knockback_x, y, obj_wall)) {
		x += knockback_x;
	}
	
	if (!place_meeting(x, y + knockback_y, obj_wall)) {
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

function detect_Player_inRadius() {
	if (collision_circle(x, y, detection_radius, obj_player, false, false) || hp < max_hp) {
		saw_player = true;
	}
}

function set_Idle_State() {
	movespeed = 0;
	saw_player = false;
	face = IDLE;
}
