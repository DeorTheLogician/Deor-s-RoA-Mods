sprite_index = sprite_get("parrotFly");

parrot_hitbox = noone;
damage_rate = 10;

owner_id = noone;   //id of the object that spawned parrot.

lifetime = 0;       //The number of frames since spawning.
move_direction = 1; //The direction that parrot is moving. 1 is right, -1 is left.

run_speed = 1;  //Speed at which parrot runs.

destroyed = false;  //Is parrot about to be destroyed? (Used to run code before destruction.)

spawn_y = y;