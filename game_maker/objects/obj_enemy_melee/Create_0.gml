// Inherit the parent event
event_inherited();

//Sprites
sprite[IDLE] = spr_boss_minion_idle
sprite[RIGHT] = spr_boss_minion_right
sprite[LEFT] =  spr_boss_minion_left

create_dust_timer = 0;
attack_damage = 5;
attack_right = spr_boss_minion_attack_right;
attack_left = spr_boss_minion_attack_left;
min_distance = 15; // Mindestabstand