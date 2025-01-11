// Inherit the parent event
event_inherited();

// Bestimme die Waffe-Position basierend auf der Animation
var frame = floor(image_index); // Aktueller Frame der Animation
var weapon_x = x;
var weapon_y = y;


switch (face) {
	case DOWN: 
	switch (frame) {
		case 0: weapon_x += 3; weapon_y -= 3; break;
		case 1: weapon_x += 3; weapon_y -= 2; break;
		case 2: weapon_x += 3; weapon_y -= 3; break;
		case 3: weapon_x += 3; weapon_y -= 2; break;
		default: weapon_x += 3; weapon_y -= 3; break;
	}
	break; // Beendet den Block für DOWN

	case RIGHT: 
	switch (frame) {
		case 0: weapon_x -= 1; weapon_y -= 1; break;
		case 1: weapon_x = x; weapon_y -= 1; break;
		case 2: weapon_x -= 1; weapon_y -= 1; break;
		case 3: weapon_x -= 2; weapon_y -= 1; break;
		default: weapon_x -= 1; weapon_y -= 1; break;
	}
	break; // Beendet den Block für RIGHT
	
	case LEFT: 
	switch (frame) {
		case 0: weapon_x += 1; weapon_y -= 3; break;
		case 1: weapon_x = x; weapon_y -= 3; break;
		case 2: weapon_x += 1; weapon_y -= 3; break;
		case 3: weapon_x += 2; weapon_y -= 3; break;
		default: weapon_x += 1; weapon_y -= 3; break;
	}
	break; // Beendet den Block für LEFT
	
	case UP: 
	switch (frame) {
		case 0: weapon_x += 3; weapon_y -= 4; break;
		case 1: weapon_x += 3; weapon_y -= 5; break;
		case 2: weapon_x += 3; weapon_y -= 4; break;
		case 3: weapon_x += 3; weapon_y -= 5; break;
		default: weapon_x += 3; weapon_y -= 4; break;
	}
	break; // Beendet den Block für UP
	
	default: weapon_x = x; weapon_y = y; break;
}

if (face == LEFT) {
	draw_sprite_ext(spr_Knight_Sword, 0, weapon_x, weapon_y, 1, 1, 90, c_white, 1);
} else {
	draw_sprite_ext(spr_Knight_Sword, 0, weapon_x, weapon_y, 1, 1, 0, c_white, 1);
}
