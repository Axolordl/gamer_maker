// // VARIABLES 

//Set HP
hp = 5;
max_hp = hp;
saw_player = false;

//Speed
speed = 0;

// sprites
face = IDLE

sprite[IDLE] = spr_boss_minion_idle
sprite[RIGHT] = spr_boss_minion_right
sprite[LEFT] =  spr_boss_minion_left

//Mask Collision
mask_index = sprite[IDLE];

//Detection Radius
detection_radius = 30;