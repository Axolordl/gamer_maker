// // Code

// Inherit the parent event
event_inherited();

//Call a script which decides what to do in which state of the Enemy
set_Melee_Enemy_State();

//set states
if (hp <= 0) {
	state = "Death";
}
	
if state != "Death" {
    if state != "Attack" { // Gegner greift gerade nicht an
        if (instance_exists(obj_player) && saw_player == true) {
            state = "Move"; 
        } else {
            state = "Idle";
        }
    }
	if (instance_exists(obj_player)) {
		// Get the Distance to The Player and if its less then the min distance he should attack (Attack state)
		var distance_To_Player = point_distance(x, y, obj_player.x, obj_player.y);
		if (distance_To_Player <= min_distance && state != "Attack") {
			state = "Attack";
		}
	}
}

//If he is in the Attack state he should switch back to Move State when The Animation is done one time
if (state == "Attack") {
    // Überprüfen, ob die Animation fertig ist
    if ((sprite_index == attack_right || sprite_index == attack_left) && image_index >= image_number - 1) {
        state = "Move";
    }
}


// // Functions

function Move_To_Player_Melee() {
	movespeed = 0.7;
	mp_potential_step_object(obj_player.x, obj_player.y, movespeed, obj_enemy);
}

//
function Attack_Player_InRange() {
	// Mindestdistanz zum Spieler
	movespeed = 0;
	//get the direction to the PLayer and set the sprite Attack depending on this direction
	var direct = point_direction(x, y, obj_player.x, obj_player.y);
	if (direct > 270 || direct < 90) {
		sprite_index = attack_right;
	} else {
		sprite_index = attack_left;
	}
	//Create Hitbox for biting right
	if (sprite_index == attack_right) {
		var hitbox = instance_create_layer(x + 2, y, "Enemies", obj_Hitbox_EnemyMelee_Attack);
		hitbox.image_xscale = 1;
	}
	//Create Hitbox for biting left
	if (sprite_index == attack_left) {
		var hitbox = instance_create_layer(x - 2, y, "Enemies", obj_Hitbox_EnemyMelee_Attack);
		hitbox.image_xscale = -1;
	}
	
	//Set an Alarm which destroys the created Hitbox if it doesnt hit a PLayer
	alarm[0] = 20;
}
