// // Code
// Inherit the parent event
event_inherited();

check_for_dash();

dash_after_check();

// // Functions




///@desc Checks if the player wants to dash and sets the direction with the player face direction (To Actually dash you need the dash after check function)
function check_for_dash() {
	//Wir prüfen ob der spieler dash mit space und ob wir schon dashen
	if (keyboard_check_pressed(vk_space) && !is_dashing) {
	
	    is_dashing = true; //Momentan am Dashen
	    dash_distance_remaining = dash_distance; // Wir dekrementieren dash distance remaining später 

	    // Richtung festlegen jenachdem in welche richtung der Spieler schaut
	    switch (face) {
	        case RIGHT: dash_direction = 0; break;
	        case LEFT: dash_direction = 180; break;
	        case DOWN: dash_direction = 270; break;
	        case UP: dash_direction = 90; break;
	        default: dash_direction = 0; break;
	    }
	}
}

function dash_after_check() {
	if (is_dashing) {
	    // Bewegung berechnen
	    var new_x = lengthdir_x(dash_speed, dash_direction);
	    var new_y = lengthdir_y(dash_speed, dash_direction);

	    // Kollision prüfen mit einer Wand
	    if (!place_meeting(x + new_x, y + new_y, obj_wall)) {
	        x += new_x;
	        y += new_y;
	        dash_distance_remaining -= dash_speed; // Verbleibende Distanz verringern
	    } else {
	        // Dash bei Kollision stoppen
	        dash_distance_remaining = 0;
	    }

	    // Dash beenden, wenn Distanz aufgebraucht
	    if (dash_distance_remaining <= 0) {
	        is_dashing = false;
	        alarm[1] = dash_cd; // Abklingzeit starten
	    }
	}
}