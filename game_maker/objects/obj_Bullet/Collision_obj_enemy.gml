
// Speichere die ID des getroffenen Gegners
var hit = instance_place(x, y, obj_enemy);  // Holt die Instanz des getroffenen Gegners

new_x = hit.x - obj_player.x;
new_y = hit.y - obj_player.y;

// Vergleiche die absoluten Werte der Distanzen
if (abs(new_x) > abs(new_y)) {
	// Bewegung auf der X-Achse
	if (hit.x < obj_player.x) {
	    hit.x -= 10; // Verschiebe nach links
	} else {
	    hit.x += 10; // Verschiebe nach rechts
	}
} else {
	// Bewegung auf der Y-Achse
	if (hit.y < obj_player.y) {
	    hit.y -= 10; // Verschiebe nach oben
	} else {
	    hit.y += 10; // Verschiebe nach unten
	}
}
instance_destroy();