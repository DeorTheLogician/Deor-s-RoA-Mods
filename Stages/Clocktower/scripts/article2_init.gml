sprite_index = sprite_get("scissormanWalkCycle");

scissors_hitbox = noone;
damage_rate = 10;

owner_id = noone;   //id of the object that spawned Scissorman.

lifetime = 0;       //The number of frames since spawning.
move_direction = 1; //The direction that Scissorman is moving. 1 is right, -1 is left.

run_speed = 1;  //Speed at which Scissorman runs.

destroyed = false;  //Is Scissorman about to be destroyed? (Used to run code before destruction.)