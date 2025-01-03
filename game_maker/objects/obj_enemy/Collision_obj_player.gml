//Push Enemy back if he collides with Player

// // Code
push_back();

// // Functions
function push_back() {
	//Added in every Move a If which checks if it would collide with a Wall
	if obj_player.x < x {
		if (!place_meeting(x + 10, y, obj_wall)) {
			x += 10;
		}
		
	} else {
		if (!place_meeting(x - 10, y, obj_wall)) {
			x -= 10;
		}
	}
	
	if obj_player.y < y {
		if (!place_meeting(x, y + 10, obj_wall)) {
			y += 10;
		}
	} else {
		if (!place_meeting(x, y - 10, obj_wall)) {
			y -= 10;
		}
			
	}
}
