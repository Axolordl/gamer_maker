// // Code

if (instance_exists(obj_Knight_Class)) {
	Update_Weapon_Position();
	perform_attack();
} else {
	instance_destroy();
}


// // Functions
function Update_Weapon_Position () {
	// Bestimme die Waffe-Position basierend auf der Animation
	var frame = floor(obj_player.image_index); // Aktueller Frame der Animation
	x = obj_player.x;
	y = obj_player.y;


	switch (obj_player.face) {
		case DOWN: 
		switch (frame) {
			case 0: x += 3; y -= 3; break;
			case 1: x += 3; y -= 2; break;
			case 2: x += 3; y -= 3; break;
			case 3: x += 3; y -= 2; break;
			default: x += 3; y -= 3; break;
		}
		break; // Beendet den Block für DOWN

		case RIGHT: 
		switch (frame) {
			case 0: x -= 1; y -= 1; break;
			case 1: x = x; y -= 1; break;
			case 2: x -= 1; y -= 1; break;
			case 3: x -= 2; y -= 1; break;
			default: x -= 1; y -= 1; break;
		}
		break; // Beendet den Block für RIGHT
	
		case LEFT: 
		switch (frame) {
			case 0: x += 1; y -= 3; break;
			case 1: x = x; y -= 3; break;
			case 2: x += 1; y -= 3; break;
			case 3: x += 2; y -= 3; break;
			default: x += 1; y -= 3; break;
		}
		break; // Beendet den Block für LEFT
	
		case UP: 
		switch (frame) {
			case 0: x += 3; y -= 4; break;
			case 1: x += 3; y -= 5; break;
			case 2: x += 3; y -= 4; break;
			case 3: x += 3; y -= 5; break;
			default: x += 3; y -= 4; break;
		}
		break; // Beendet den Block für UP
	
		default: x = x; y = y; break;
	}

	// Spiegeln oder anpassen, falls nötig
	if (obj_player.face == LEFT) {
	    image_xscale = -1;
	} else {
	    image_xscale = 1;
		}

	// Passe die Depth an, wenn der Spieler nach oben schaut
	if (obj_player.face == UP) {
	    depth = obj_player.depth + 1; // Waffe hinter dem Spieler
	} else {
	    depth = obj_player.depth - 1; // Waffe vor dem Spieler
		}
}
	
function perform_attack() {
	// Angriff auslösen, wenn die linke Maustaste gedrückt wird
	if (mouse_check_button_pressed(mb_left) && attack_cd <= 0) {
	    sprite_index = attack_side; // Angriffssprite setzen
	    attack_cd = 60; // 60 = ca. 1s
	}

	// Angriffssprite abspielen
	if (sprite_index == attack_side) {
	    if (image_index >= image_number) { // Letzter Frame der Animation erreicht?
	        sprite_index = attack_idle; // Zurück zum Standardsprite
	    }
	}

	// Cooldown reduzieren
	if (attack_cd > 0) {
	    attack_cd--;
	}
}