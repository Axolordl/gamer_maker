// Gegner an den markierten Positionen spawnen
for (var i = 0; i < array_length(mark_positions); i++) {
    var pos = mark_positions[i];
    var spawn_x = pos[0];
    var spawn_y = pos[1];
    
    // Zufälligen Gegnertyp auswählen
    var enemy_type = choose(enemy_types[0], enemy_types[1]);
    
    // Gegner erstellen
	instance_create_layer(spawn_x, spawn_y, "Enemies", enemy_type);
	
	// Durchlaufe alle Gegner im Umkreis von 30 Pixeln
	with (collision_circle(x, y, 30, obj_enemy, false, true)) {
    saw_player = true; // Setzt `saw_player` auf true für alle Gegner, die in Reichweite sind
	}
}

wave++;
