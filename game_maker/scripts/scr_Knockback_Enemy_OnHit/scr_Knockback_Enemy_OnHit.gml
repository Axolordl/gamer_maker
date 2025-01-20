/// @desc Knockback the enemy when u hit him with a sword, bullet etc. 
/// @param {real} strength - How strong the Knockback is on the Enemy

function scr_Knockback_Enemy_OnHit(strength){
	// Speichere die ID des getroffenen Gegners
	var hit = instance_place(x, y, obj_enemy);  // Holt die Instanz des getroffenen Gegners

	// Überprüfen, ob eine Instanz gefunden wurde
	if (hit != noone) {
		var direct = point_direction(obj_player.x, obj_player.y, hit.x, hit.y);
	    var knockback_force = strength; // Stärke des Knockbacks

	    // Initialisiere die Geschwindigkeit des Gegners
	    hit.knockback_x = lengthdir_x(knockback_force, direct);
	    hit.knockback_y = lengthdir_y(knockback_force, direct);

	    // Optionale Zeitbegrenzung für den Knockback
	    hit.knockback_timer = 20; // Anzahl der Steps (z. B. 20 = 1 Sekunde bei 30 FPS)
	}
}