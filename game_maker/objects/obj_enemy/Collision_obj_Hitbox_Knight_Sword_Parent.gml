//If Enemy collides with Sword Hitbox he should get the dmg the weapon holds as a value

if (instance_exists(obj_Knight_Class)) {
	var damage = obj_Weapon_Sword.attack_damage;
	hp -= damage;
	if (face == LEFT) {
		instance_create_depth(x, y, depth, obj_hit_effect_1_right); //Create a hitspark to the right when hit from left
	} else {
		instance_create_depth(x, y, depth, obj_hit_effect_1_left); //Create a hitspark to the left when hit from right
	}
	
}
