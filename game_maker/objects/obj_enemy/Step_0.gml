// // CODE

death();
set_depth();

if (collision_circle(x, y, 80, obj_player, false, false)) {
	saw_player = true;
}

if (instance_exists(obj_player) && saw_player == true) {
	go_to_player();
} else {
	//Set Movement Speed to 0 and Sprite to Idle
	movespeed = 0;	 
	sprite_index = spr_boss_minion_idle;
}

// // FUNCTIONS

//function go_to_player(){
//	// go to player X
//	if (obj_player.x) != x{
//		if obj_player.x < x{
//			x -= movespeed;
//		} else {
//			x += movespeed;
//		}
//	}	
//	// go to player Y
//	if obj_player.y != y{
//		if obj_player.y < y{
//			y -= movespeed;
//		} else {
//			y += movespeed;
//		}
//	}
//}

function go_to_player() {
	// Save the axis of the player in a variable
    var target_x = obj_player.x;
    var target_y = obj_player.y;
    
    // Berechne die Richtung der Bewegung
    var new_x = target_x - x; // Difference on x movement
    var new_y = target_y - y; // Difference on y movement

    // Choose Sprite based on Movement Direction
	
    if (abs(new_x) > abs(new_y)) {
        if (new_x > 0) {
            sprite_index = spr_boss_minion_right; // Set Sprite Right
        } else {
            sprite_index = spr_boss_minion_left; // Set Sprite Left
        }
    } else {
		// Set Sprite Idle for top and down Movement
        if (new_y > 0) {
            sprite_index = spr_boss_minion_idle; 
        } else {
            sprite_index = spr_boss_minion_idle; 
        }
    }
	// Move to Player
	mp_linear_step_object(obj_player.x, obj_player.y, 0.8, obj_wall);
	
}

function death() {
	if (hp <= 0) {
	 instance_destroy();
	}
}
