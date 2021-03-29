
//Platform Spawning Logic
if(is_aether_stage()) {
    if(get_gameplay_time() % spawn_interval == 1) { //Begin spawning logic every ten seconds.
        //Generate a seed for the random number function based on gameplay time and the locations of all the players.
        seed = get_gameplay_time();
        with(asset_get("oPlayer")) {
            other.seed = (other.seed * x) div y;
        }

        var rand_num_0 = random_func_2(seed % 200, 100, true);
        var rand_num_1 = random_func_2((seed + 1) % 200, 100, true);
        var rand_num_2 = random_func_2((seed + 2) % 200, 100, true);

        //Spawn donation platform.
        if(rand_num_0 <= donation_chance) {
            //If the donation platform is already spawned, reset its active state timer.
            if(instance_exists(donation_plat)) {
                donation_plat.state = 1;
                donation_plat.state_timer = -donation_plat.spawn_time;
                donation_plat.owner = id;
            }
            //Otherwise, spawn a new donation platform.
            else {
                donation_plat = instance_create(get_marker_x(1), get_marker_y(1), "obj_stage_article_platform", 1);
                donation_plat.owner = id;
                donation_plat.state = 0;

                //Randomly choose size using a second random number.
                var rand_num_size = random_func(seed % 24, 100, true);
                if(rand_num_size <= donation_chance_sm) {
                    donation_plat.size = 1;
                    // donatin_plat.sprit_index = donation_plat_sm_spawn;
                    sound_ticket[1]++;
                } else if(rand_num_2 <= donation_chance_md) {
                    donation_plat.size = 2;
                    // donatin_plat.sprit_index = donation_plat_md_spawn;
                    sound_ticket[2]++;
                } else {
                    donation_plat.size = 0;
                    // donatin_plat.sprit_index = donation_plat_lg_spawn;
                    sound_ticket[0]++;
                }
            }
        }

        //Spawn follower platform.
        if(rand_num_1 <= follower_chance) {
            //If the follower platform is already spawned, reset its active state timer.
            if(instance_exists(follower_plat)) {
                follower_plat.state = 1;
                follower_plat.state_timer = -follower_plat.spawn_time;
                follower_plat.owner = id;
            }
            //Otherwise, spawn a new follower platform.
            else {
                follower_plat = instance_create(get_marker_x(2), get_marker_y(2), "obj_stage_article_platform", 2);
                follower_plat.owner = id;
                follower_plat.state = 0;
                follower_plat.spawn_interval = spawn_interval;
                sound_ticket[3]++;
            }
        }

        //Spawn subscriber platform.
        if(rand_num_2 <= subscriber_chance) {
            //If the subscriber platform is already spawned, reset its active state timer.
            if(instance_exists(subscriber_plat)) {
                subscriber_plat.state = 1;
                subscriber_plat.state_timer = -subscriber_plat.spawn_time;
                subscriber_plat.owner = id;
            }
            //Otherwise, spawn a new subscriber platform.
            else {
                subscriber_plat = instance_create(get_marker_x(3), get_marker_y(3), "obj_stage_article_platform", 3);
                subscriber_plat.owner = id;
                subscriber_plat.state = 0;
                sound_ticket[4]++;
            }
        }

    }

    //Handle Notification SFX
    //Goes through the sound ticket and plays each sound in the queue in order of priority.
    if(sound_play_time == 0) {
        if(sound_ticket[0] > 0) {
            print_debug("large donation sound");
            sound_play(donation_sound_lg, false, 0, 1, 1);
            sound_play_time = donation_sound_lg_length;
            sound_ticket[0]--;
        }
        else if(sound_ticket[2] > 0) {
            print_debug("medium donation sound");
            sound_play(donation_sound_sm, false, 0, 1, 1);
            sound_play_time = donation_sound_sm_length;
            sound_ticket[2]--;
        }
        else if(sound_ticket[1] > 0) {
            print_debug("small donation sound");
            sound_play(donation_sound_md, false, 0, 1, 1);
            sound_play_time = donation_sound_md_length;
            sound_ticket[1]--;
        }
        
        else if(sound_ticket[4] > 0) {
            print_debug("subscription sound");
            sound_play(subscriber_sound, false, 1, 1, 1);
            sound_play_time = subscriber_sound_length;
            sound_ticket[4]--;
        }
        else if(sound_ticket[3] > 0) {
            print_debug("follower sound");
            sound_play(follower_sound, false, -1, 1, 1);
            sound_play_time = follower_sound_length;
            sound_ticket[3]--;
        }
        
    }
    else if(sound_play_time > 0) {
        suppress_stage_music(0.75, 0.05);
        sound_play_time--;
    }
}