/// @desc Knockback the Player when u hit him with an attack
/// @param {real} strength - How strong the Knockback is on the Player
function scr_Knockback_Player_OnHit(strength){
	// Überprüfen, ob die Hitbox vorhanden ist
    var hit = instance_place(x, y, obj_Hitbox_EnemyMelee_Attack);

    // Wenn eine Instanz der Hitbox gefunden wurde
    if (hit != noone) {
        // Berechne die Richtung zum Trefferpunkt der Hitbox
        var direct = point_direction(hit.x, hit.y, x, y);

        // Stärke des Knockbacks anwenden
        knockback_x = lengthdir_x(strength, direct);
        knockback_y = lengthdir_y(strength, direct);
        knockback_timer = 20; // Setze den Timer für den Knockback (20 Schritte)
    }
}