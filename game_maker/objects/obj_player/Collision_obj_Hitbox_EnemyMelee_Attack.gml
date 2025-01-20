// // Code

//Take Damage from Enemy and check if there even is one left
if (instance_exists(obj_enemy_melee)) {
	var hit_frame = obj_enemy_melee.image_index;
	var damage = obj_enemy_melee.attack_damage;
	
	//Hitframe toleranz größer gemacht da manchmal == 6 nicht erreicht wurde und aufgrunddessen muss man
	//mit einer zusätzlichen variable den schaden steuern, da dieser sonst mehrmals passiert
	if ((hit_frame >= 6 && hit_frame <= 7) && !has_taken_damage) {
		//Rufen ein Script auf welches den Spieler knockbackd
		scr_Knockback_Player_OnHit(3);
		hp -= damage;
		has_taken_damage = true;
		alarm[0] = 24; //Ein Alarm setzten der nach 24 steps has_taken dmg wieder auf false setzt
	}
}
