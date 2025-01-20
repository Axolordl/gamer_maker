// // CODE

change_Player_Class();

//Check if Health is above 0, if not die
if (hp <= 0) {
	instance_destroy(self);	
}

// movement & speed
move_keys = get_move_keys()

if !instance_exists(obj_pauser) {
	calc_spd();
} else {
	pause();
}

would_collide();
move();

// sprite stuff
set_face();
set_sprite();
set_depth(); 

//Knockback
get_knockback();

// // FUNCTIONS

// controlls
function get_move_keys(){
	// check for arrow or wasd keys
	keys[UP] = max(keyboard_check(vk_up), keyboard_check(ord("W")));
	keys[DOWN] = max(keyboard_check(vk_down), keyboard_check(ord("S")));
	keys[LEFT] = max(keyboard_check(vk_left), keyboard_check(ord("A")));
	keys[RIGHT] = max(keyboard_check(vk_right), keyboard_check(ord("D")));
	
	return keys;
}


// wall collision
function would_collide(){
	// check & set spd[X]
	if place_meeting(x + spd[X], y, obj_wall) == true {
		spd[X] = 0;
	}
	
	// check & set spd[Y]
	if place_meeting(x, y + spd[Y], obj_wall) == true {
		spd[Y] = 0;
	} 
}


// movement
function calc_spd(){
	spd[X] = (move_keys[RIGHT] -  move_keys[LEFT])* move_spd;
	spd[Y] = (move_keys[DOWN] -  move_keys[UP]) * move_spd;
}

function move(){
	x += spd[X];
	y += spd[Y];
}

// pause
function pause(){
	spd[X] = 0;
	spd[Y] = 0;
}


// sprite
function set_face(){
	// default
	// face = DOWN;
	
	// check xspd
	if spd[X] != 0 {
		if spd[X] > 0 {face = RIGHT} else {face = LEFT};
	}
	
	// check yspd
	if spd[Y] != 0 {
		if spd[Y] > 0 {face = DOWN} else {face = UP};
	}
}

function set_sprite(){
	if spd[X] == 0 && spd[Y] == 0{
		image_index = 0;
	} 
	//mask_index = sprite[face];
	sprite_index = sprite[face];
}

function set_depth() {
	depth = -bbox_bottom;
}

function change_Player_Class() {
	
	if (collision_circle(x, y, 30, obj_Pickup_Knight_Class, false, false)) {	
		// Überprüfen, ob der Spieler sich in der Nähe des Pickups befindet
		if (keyboard_check_pressed(ord("E"))) {	
			//Wenn schon ein Knight im Spiel ist, sollte nicht noch einer spawnbar sein
			if (!instance_exists(obj_Knight_Class)){
				 // Ersetze die Instanz von player1 mit player2
			    instance_destroy();  // Lösche das aktuelle Objekt
			    instance_create_layer(x, y, "Character_Class", obj_Knight_Class);  // Erstelle die neue Instanz
				instance_create_layer(x, y, "Character_Class", obj_Weapon_Sword); // Create Weapon For Knight
			}
		}
	}
	
	if (collision_circle(x, y, 30, obj_Pickup_Mage_Class, false, false)) {
		// Überprüfen, ob der Spieler sich in der Nähe des Pickups befindet	
		if (keyboard_check_pressed(ord("E"))) {
			//Wenn schon ein Mage im Spiel ist, sollte nicht noch einer spawnbar sein
			if (!instance_exists(obj_Mage_Class)){
				// Ersetze die Instanz von player1 mit player2
				instance_destroy();  // Lösche das aktuelle Objekt
				instance_create_layer(x, y, "Character_Class", obj_Mage_Class);  // Erstelle die neue Instanz
			}
		}
	
	}
}
	
function get_knockback() {
	if (knockback_timer > 0) {
		
	    // Prüfe Kollision mit einer Wand
	    if (!place_meeting(x + knockback_x, y, obj_wall)) {
			x += knockback_x;
		}
	
		if (!place_meeting(x, y + knockback_y, obj_wall)) {
		    y += knockback_y;
		}
	    // Reduziere den Knockback-Timer
	    knockback_timer -= 1;

	    // Verlangsamt den Knockback-Effekt nach und nach
	    knockback_x *= 0.9;
	    knockback_y *= 0.9;

	    // Stoppt den Knockback, wenn der Timer abläuft
	    if (knockback_timer <= 0) {
	        knockback_x = 0;
	        knockback_y = 0;
	    }
	}
}
