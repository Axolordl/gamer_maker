// // Code

// Speichere die ID des getroffenen Gegners
var hit = instance_place(x, y, obj_enemy);  // Holt die Instanz des getroffenen Gegners

// Überprüfen, ob eine Instanz gefunden wurde
if (hit != noone) {
	var direct = point_direction(obj_player.x, obj_player.y, hit.x, hit.y);
    var knockback_force = 3; // Stärke des Knockbacks

    // Initialisiere die Geschwindigkeit des Gegners
    hit.knockback_x = lengthdir_x(knockback_force, direction);
    hit.knockback_y = lengthdir_y(knockback_force, direction);

    // Optionale Zeitbegrenzung für den Knockback
    hit.knockback_timer = 20; // Anzahl der Steps (z. B. 20 = 1 Sekunde bei 30 FPS)
	
}

instance_destroy();
	
	// //DEPRECATED CODE
//new_x = hit.x - obj_player.x;
//new_y = hit.y - obj_player.y;

//// Vergleiche die absoluten Werte der Distanzen
//if (abs(new_x) > abs(new_y)) {
//	// Bewegung auf der X-Achse
//	if (hit.x < obj_player.x) {
//	    // Prüfe, ob die Verschiebung nach links keine Kollision mit einer Wand verursacht
//	    if (!place_meeting(hit.x - 10, hit.y, obj_wall)) {
//	        hit.x -= 10; // Verschiebe nach links
//	    }
//	} else {
//	    // Prüfe, ob die Verschiebung nach rechts keine Kollision mit einer Wand verursacht
//	    if (!place_meeting(hit.x + 10, hit.y, obj_wall)) {
//	        hit.x += 10; // Verschiebe nach rechts
//	    }
//	}
//} else {
//	// Bewegung auf der Y-Achse
//	if (hit.y < obj_player.y) {
//	    // Prüfe, ob die Verschiebung nach oben keine Kollision mit einer Wand verursacht
//	    if (!place_meeting(hit.x, hit.y - 10, obj_wall)) {
//	        hit.y -= 10; // Verschiebe nach oben
//	    }
//	} else {
//	    // Prüfe, ob die Verschiebung unten oben keine Kollision mit einer Wand verursacht
//	    if (!place_meeting(hit.x, hit.y + 10, obj_wall)) {
//	        hit.y += 10; // Verschiebe nach unten
//		    }
//		}
//	}
