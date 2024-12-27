function changeWeapon(weapon) {
	var wp_map = weapons[weapon];
	//faster Option:
	//sprite = wp_map[? "Sprite"];
	sprite = ds_map_find_value(wp_map, "sprite");
	recoil = wp_map[? "recoil"];
	recoil_push = wp_map[? "recoil_push"];
	damage = wp_map[? "damage"];
	projectile = wp_map[? "projectile"];
	startup = wp_map[? "startup"];
	bulletspeed = wp_map[? "bulletspeed"];
	length = wp_map[? "length"];
	cooldown = wp_map[? "cooldown"];
	automatic = wp_map[? "automatic"];
}


