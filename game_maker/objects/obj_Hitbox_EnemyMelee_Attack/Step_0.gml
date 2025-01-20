// // Code
// Only does Damage once to the Player
if (!already_hit && place_meeting(x, y, obj_player)) {
    already_hit = true; // Markiere die Hitbox als "benutzt"
    instance_destroy(); // Optional: Zerstöre die Hitbox sofort
}
