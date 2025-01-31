// Inherit the parent event
event_inherited();

// // VARIABLES

//Health Points
hp = 100;
hp_max = hp;

//Health Bar Size
healthbar_width = 200;
healthbar_height = 32;

//Stamina Points
stamina = 100;
stamina_max = stamina;

//Stamina Bar Size
staminabar_width = 200;
staminabar_height = 32;

//Stamina Consum
stamina_consum_dash = 30;
stamina_consum_attack = 10;


// sprites
sprite[RIGHT] = spr_Knight_Right;
sprite[UP] = spr_Knight_Up;
sprite[LEFT] = spr_Knight_Left;
sprite[DOWN] = spr_Knight_Down;

// Dash 
dash_distance = 20;   // Gesamtdistanz des Dashs
dash_speed = 2;       // Geschwindigkeit des Dashs (pro Frame)
dash_direction = 0;   // Richtung des Dashs
is_dashing = false;   // Gibt an, ob gerade gedasht wird
dash_cd = 60;         // Abklingzeit nach dem Dash (in Frames)
dash_distance_remaining = 0; //Dash Distanz die verbleibt über die Frames verteilt