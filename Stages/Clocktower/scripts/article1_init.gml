sprite_index = sprite_get("JessicaRunLeft");

owner_id = noone;   //id of the object that spawned Jennifer.

lifetime = 0;       //The number of frames since spawning.
move_direction = 1; //The direction that Jennifer is moving. 1 is right, -1 is left.

run_speed = 1;  //Speed at which Jennifer runs.

destroyed = false;  //Is Jennifer about to be destroyed? (Used to run code before destruction.)