function check_to_create_dust() {
	///@desc	create the dust when our dust timer is 0
	//Check if we should create dust this step
	if (create_dust_timer <= 0) {
		//set timer for next time
		create_dust_timer = 12;
		
		//only create dust if the enemy is moving are moving
		if (saw_player == true) {
			instance_create_layer(x + random_range(-4, 4), bbox_bottom + random_range(-3, 3), "Enemies", obj_dust_enemy_melee_sprinting);
		}
	} else {create_dust_timer--;}
}