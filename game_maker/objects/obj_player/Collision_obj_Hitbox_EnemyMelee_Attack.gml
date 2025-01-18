//Take Damage from Enemy 
var hit_frame = obj_enemy_melee.image_index;
var damage = obj_enemy_melee.attack_damage;
show_debug_message(hp);

if (hit_frame == 6) {
	hp -= damage;
}
