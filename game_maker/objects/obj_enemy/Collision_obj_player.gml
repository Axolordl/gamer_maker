//Push Enemy back if he collides with Player

// // Code
//knockback();
knockback_collide_with_Player();



//// // Functions
function knockback_collide_with_Player() {
	var direct = point_direction(obj_player.x, obj_player.y, x, y);
	var knockback_force = 4; // Stärke des Knockbacks

	// Initialisiere die Geschwindigkeit des Gegners
	knockback_x = lengthdir_x(knockback_force, direct);
	knockback_y = lengthdir_y(knockback_force, direct);

	// Optionale Zeitbegrenzung für den Knockback
	knockback_timer = 20; // Anzahl der Steps (z. B. 20 = 1 Sekunde bei 30 FPS)

}




//function knockback() {
//	//Added in every Move a If which checks if it would collide with a Wall
//	if obj_player.x < x {
//		if (!place_meeting(x + 10, y, obj_wall)) {
//			x += 10;
//		}
		
//	} else {
//		if (!place_meeting(x - 10, y, obj_wall)) {
//			x -= 10;
//		}
//	}
	
//	if obj_player.y < y {
//		if (!place_meeting(x, y + 10, obj_wall)) {
//			y += 10;
//		}
//	} else {
//		if (!place_meeting(x, y - 10, obj_wall)) {
//			y -= 10;
//		}
			
//	}
//}
