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
	if (instance_exists(obj_player) && saw_player == true) {
		state = "Move";	
	} else {
		state = "Idle";
	}
}

// // Functions

function Move_To_Player_Melee() {
	movespeed = 0.7;
	mp_potential_step_object(obj_player.x, obj_player.y, movespeed, obj_enemy);
}
