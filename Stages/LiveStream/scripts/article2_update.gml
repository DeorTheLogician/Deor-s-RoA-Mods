//Set up state machine.
#macro PS_SPAWN 0;
#macro PS_ACTIVE 1;
#macro PS_DESPAWN 2;

if(init) {
    active_time = owner.spawn_interval - spawn_time;  //Number of game frames the active state lasts.
    init = false;
}

switch(state) {
    case PS_SPAWN:
        //Transition to active state once time limit is reached.
        if(state_timer == spawn_time) {
            state = PS_ACTIVE;
            state_timer = 0;
        }
        //Enable correct sized collision once proper frame of spawn animation is reached. 
        else if(state_timer == spawn_clip_time) {
            mask_index = follower_plat_mask;
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
            sprite_index = follower_plat;
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
            sprite_index = follower_plat_despawn;
        }
        break;
}

//Increment state timer.
state_timer++;
image_index += anim_speed;