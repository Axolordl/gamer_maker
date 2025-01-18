// Timer erhöhen
spawn_timer++;
randomize();

// Prüfen, ob es Zeit ist, Gegner zu spawnen und ob die maximale Anzahl nicht überschritten wurde
if (spawn_timer >= spawn_interval && instance_number(obj_enemy) < max_enemies && wave <= max_wave) {
    // Markierungen für Spawnpunkte erstellen
    mark_positions = []; // Leeren der Markierungen vor der neuen Welle

    // Zufällige Positionen für die Markierungen und Gegner festlegen
    for (var i = 0; i < num_enemies; i++) {
        var angle = irandom(360);
		var distanceX = irandom_range(10, 90); 
		var distanceY = irandom_range(5, 60); 
        var spawn_x = x + lengthdir_x(distanceX, angle);
        var spawn_y = y + lengthdir_y(distanceY, angle);

        // Markierung erstellen
        var mark = instance_create_layer(spawn_x, spawn_y, "Enemies", obj_mark);
        mark.lifetime = mark_duration; // Lebensdauer der Markierung setzen
        
        // Markierte Position speichern
        array_push(mark_positions, [spawn_x, spawn_y]);
    }

    // Gegner spawnen, nachdem die Markierungen verschwunden sind
    alarm[0] = mark_duration; // Alarm setzen, um nach mark_duration die Gegner zu spawnen
    spawn_timer = 0; // Timer zurücksetzen
}