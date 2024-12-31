//Push Enemy back if he collides with Player

// // Code
push_back();

// // Functions
function push_back() {
	if obj_player.x < x {
		
		x += 10;
	} else {
		x -= 10;	
	}
	
	if obj_player.y < y {
		
		y += 10;
	} else {
		y -= 10;	
	}
}
