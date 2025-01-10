// // VARIABLES 

//Set HP
hp = 5;
max_hp = hp;
saw_player = false;

//Speed
movespeed = 0;

// sprites
face = IDLE;

sprite[IDLE] = spr_boss_minion_idle
sprite[RIGHT] = spr_boss_minion_right
sprite[LEFT] =  spr_boss_minion_left

//Mask Collision
mask_index = sprite[IDLE];

//Detection Radius
detection_radius = 30;

//Knockback Stuff
knockback_x = 0;
knockback_y = 0;
knockback_timer = 0;

//Attack Timer
attack_timer = 0;