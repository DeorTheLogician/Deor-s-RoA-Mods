//Set up state machine.
#macro PS_SPAWN 0;
#macro PS_ACTIVE 1;
#macro PS_DESPAWN 2;

if(init) {
    switch(size) {
        case 0:
            sprite_index = donation_plat_lg_spawn;
            break;
        case 1:
            sprite_index = donation_plat_sm_spawn;
            break;
        case 2:
            sprite_index = donation_plat_md_spawn;
            break;
    }

    active_time = owner.spawn_interval - spawn_time;  //Number of game frames the active state lasts.
    init = false;
}

switch(state) {
    case PS_SPAWN:
        // print_debug("size: " + string(size));
        //Transition to active state once time limit is reached.
        if(state_timer == spawn_time) {
            state = PS_ACTIVE;
            state_timer = 0;
        }
        //Enable correct sized collision once proper frame of spawn animation is reached. 
        else if(state_timer == spawn_clip_time) {
            switch(size) {
                case 0:
                    mask_index = donation_plat_lg_mask;
                    break;
                case 1:
                    mask_index = donation_plat_sm_mask;
                    break;
                case 2:
                    mask_index = donation_plat_md_mask;
                    break;
            }
        }
        break;

    case PS_ACTIVE:
        //Transition to despawn state once time limit is reached.
        if(state_timer == active_time) {
            state = PS_DESPAWN;
            state_timer = 0;
        }
        //Change sprite index to appropriate platform sprite at beginning of state.
        else if(state_timer == 1) {
            switch(size) {
                case 0:
                    sprite_index = donation_plat_lg;
                    break;
                case 1:
                    sprite_index = donation_plat_sm;
                    break;
                case 2:
                    sprite_index = donation_plat_md;
                    break;
            }
        }
        break;

    case PS_DESPAWN:
        //Destroy self once time limit is reached.
        if(state_timer == despawn_time) {
            instance_destroy();
        }
        //Disable collision once proper frame of despawn animation is reached.
        else if(state_timer == despawn_noclip_time) {
            mask_index = asset_get("empty_sprite");
        }
        //Change sprite index to appropriate despawn sprite at beginning of state.
        else if(state_timer == 1) {
            switch(size) {
                case 0:
                    sprite_index = donation_plat_lg_despawn;
                    break;
                case 1:
                    sprite_index = donation_plat_sm_despawn;
                    break;
                case 2:
                    sprite_index = donation_plat_md_despawn;
                    break;
            }
        }
        break;
}

//Increment state timer.
state_timer++;
image_index += anim_speed;