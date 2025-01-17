// Maximale Anzahl an Gegnern, die im Raum existieren dürfen
max_enemies = 6; // Maximal erlaubte Anzahl an Gegnern

// Zeit, bis Gegner spawnen
mark_duration = 60; // Markierung bleibt 60 Frames sichtbar
num_enemies = 2; // Anzahl der Gegner pro Welle
spawn_radius = 30; // Radius um den Spawner, in dem Gegner erscheinen
wave = 1;
max_wave = 1;

// Array für Markierungen
mark_positions = [];

// Gegner-Array
enemy_types = [obj_enemy_melee, obj_enemy_ranged];

// Timer für den Spawnen-Zyklus
spawn_interval = 120; // Alle 2 Sekunden
spawn_timer = 0;
