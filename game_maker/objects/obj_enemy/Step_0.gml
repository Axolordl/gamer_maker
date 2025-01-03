// // CODE

death();

if (collision_circle(x, y, 80, obj_player, false, false)) {
	saw_player = true;
}

if (instance_exists(obj_player) && saw_player == true) {
	//go_to_player();
	mp_linear_step_object(obj_player.x, obj_player.y, 0.8, obj_wall);
} else {
	movespeed = 0;	 
}

//depth
depth = -bbox_bottom;

// // FUNCTIONS

//function go_to_player(){
//	// go to player X
//	if (obj_player.x) != x{
//		if obj_player.x < x{
//			x -= movespeed;
//		} else {
//			x += movespeed;
//		}
//	}	
//	// go to player Y
//	if obj_player.y != y{
//		if obj_player.y < y{
//			y -= movespeed;
//		} else {
//			y += movespeed;
//		}
//	}
//}

function death() {
	if (hp <= 0) {
	 instance_destroy();
	}
}