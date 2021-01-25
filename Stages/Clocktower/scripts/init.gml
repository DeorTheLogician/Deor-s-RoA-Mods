jennyArticle = noone;
scissorArticle = noone;
parrotArticle = noone;

seed = 0;   //Random number seed for when the parrot spawns.

time_last_destroyed = get_gameplay_time();  //The last time Jennifer left the stage.
spawn_position = 0;     //The current spawn location for the articles. One less than the corresponding marker number for the purposes of calculations.
wait_time = 60 * 24;    //Wait time before Jennifer starts crossing the screen.

sm_follow_distance = 164;  //Distance Scissorman follows behind Jennifer.

parrot_cycle_flag = false;  //Flag for when the next cycle will spawn a parrot.
parrot_lockout_cycles = 1;  //Minimum number of cycles before the parrot can spawn again.
parrot_lockout_current = 0; //Cycles remaining before parrot lockout ends.
parrot_chance = 20;     //The percent chance that a parrot will spawn.
parrot_height = 60;     //The height above the ground that the parrot spawns.

sound_fade_time = 60 * (10 + 30/60);   //Number of frames it takes for a sound to fade in or out.
sound_fadeout_begin = 0;