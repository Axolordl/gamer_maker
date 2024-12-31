// // CODE
go_to_player();

//depth
depth = -bbox_bottom;


// // FUNCTIONS
function go_to_player(){
	// go to player X
	if (obj_player.x) != x{
		if obj_player.x < x{
			x -= movespeed;
		} else {
			x += movespeed;
		}
	}	
	// go to player Y
	if obj_player.y != y{
		if obj_player.y < y{
			y -= movespeed;
		} else {
			y += movespeed;
		}
	}
}
