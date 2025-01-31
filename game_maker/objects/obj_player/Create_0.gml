// // VARIABLES

//Health Points
hp = 50;
hp_max = hp;

//Health Bar Size
healthbar_width = 100;
healthbar_height = 32;

//Health Bar Position
healthbar_x = 15;
healthbar_y = 20;

//Stamina Points
stamina = 50;
stamina_max = stamina;
stamina_regen = 0.3;

//Stamina Size
staminabar_width = 100;
stamiinabar_height = 32;

//Stamina Bar Position
staminabar_x = 15;
staminabar_y = 60;

// keyboard & control
move_keys = [];
cooldown = 0; // I think 60 = 1s, so X*60 = Xs

// movement & direction
move_spd = 1;
spd = [];
face = DOWN;


// sprites
sprite[RIGHT] = spr_player_right;
sprite[UP] = spr_player_up;
sprite[LEFT] = spr_player_left;
sprite[DOWN] = spr_player_down;

mask_index = sprite[DOWN];

//Knockback Stuff
knockback_x = 0;
knockback_y = 0;
knockback_timer = 0;

has_taken_damage = false;