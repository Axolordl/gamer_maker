//If Enemy collides with Sword Hitbox he should get the dmg the weapon holds as a value

if (instance_exists(obj_Knight_Class)) {
	var damage = obj_Weapon_Sword.attack_damage;
	hp -= damage;
}
