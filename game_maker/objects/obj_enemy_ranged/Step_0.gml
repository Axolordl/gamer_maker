// Inherit the parent event
event_inherited();

if (instance_exists(obj_player) && saw_player == true) {
    // Mindest- und Maximaldistanz zum Spieler
    var min_distance = 30; // Mindestabstand
    var max_distance = 70; // Maximalabstand
	movespeed = 0.5;
	
    // Berechne die Distanz zum Spieler
    var distance_to_player = point_distance(x, y, obj_player.x, obj_player.y);

    // Berechne die Richtung zum Spieler
    var direction_to_player = point_direction(x, y, obj_player.x, obj_player.y);
	
	//Lets the Ranged Enemy shoot in the Player Direction
	if (distance_to_player <= max_distance && attack_timer <= 0) {
	var aim_to_Player = point_direction(x, y, obj_player.x, obj_player.y - 6); // y-6 so the enemies shoot at the center of the character
	var offset_x = lengthdir_x(17, aim_to_Player); 
	var offset_y = lengthdir_y(17, aim_to_Player);
	var bullet_x = x + offset_x;
	var bullet_y = y + offset_y;
    var bullet = instance_create_layer(bullet_x, bullet_y, "Projectiles", obj_Enemy_Bullet);
	bullet.direction = aim_to_Player;
    attack_timer = 60; // Beispiel: Schussabstand von 30 Steps
	}
	attack_timer--;

    // Bewegung des Gegners
    if (distance_to_player < min_distance) {
        // Zu nah: Bewege dich vom Spieler weg
        var move_dir = direction_to_player + 180; // Entgegengesetzte Richtung
        var target_x = x + lengthdir_x(5, move_dir);
        var target_y = y + lengthdir_y(5, move_dir);
		movespeed = 0.8;  //Wenn du hier die movespeed variable veränderst kannst du steuern wie schnell der Gegner sich zurückziehen soll
        mp_potential_step_object(target_x, target_y, movespeed, obj_wall);
    } else if (distance_to_player > max_distance) {
        // Zu weit: Bewege dich zum Spieler hin
        mp_potential_step_object(obj_player.x, obj_player.y, movespeed, obj_wall);
    } else {
		
		//Old Movement You Can Fuck around with it and see which looks better
		
        // Innerhalb des Bereichs: Bewege dich seitlich um den Spieler
        //var side_move_dir = direction_to_player + choose(-90, 90); // Bewege dich seitlich
        //var target_x = x + lengthdir_x(10000, side_move_dir); // Je höher der Wert für Length ist, desto größere Bögen macht der Gegner
        //var target_y = y + lengthdir_y(10000, side_move_dir);
        //mp_potential_step_object(target_x, target_y, movespeed, obj_wall);
		
		//Timer für Richtungswechsel

		if (side_move_timer <= 0) {
		    // Neue Richtung bestimmen, wenn Timer abgelaufen ist
		    side_move_dir = direction_to_player + choose(-90, 90);
		    side_move_timer = 45; // Anzahl der Steps bis zum nächsten Wechsel
		} else {
		    side_move_timer--;
		}
		
		var target_x = x + lengthdir_x(5, side_move_dir);
		var target_y = y + lengthdir_y(5, side_move_dir);
		
		if (!place_meeting(target_x, target_y, obj_wall)) {
			mp_potential_step_object(target_x, target_y, movespeed, obj_wall);
		}
    }

    // Aktualisiere die Animationen/Sprites
    set_sprite();
} else {
    // Kein Spieler in der Nähe: Keine Bewegung
    movespeed = 0;
    set_sprite();
}
