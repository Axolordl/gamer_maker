function Attack_The_Player_Ranged() {
	//Lets the Ranged Enemy shoot in the Player Direction
	var aim_to_Player = point_direction(x, y, obj_player.x, obj_player.y - 6); // y-6 so the enemies shoot at the center of the character
	var offset_x = lengthdir_x(17, aim_to_Player); 
	var offset_y = lengthdir_y(17, aim_to_Player);
	var bullet_x = x + offset_x;
	var bullet_y = y + offset_y;
	var bullet = instance_create_layer(bullet_x, bullet_y, "Projectiles", obj_Enemy_Bullet);
	bullet.direction = aim_to_Player;
	attack_timer = 60; // Beispiel: Schussabstand von 30 Steps
}