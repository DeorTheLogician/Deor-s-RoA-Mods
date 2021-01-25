//Setting up state names
#macro AS_IDLE 0;
#macro AS_DROP 1;
#macro AS_BOUNCE 2;
#macro AS_REEL 3;
#macro AS_GRAB_PAUSE 4;

vsp = floor(vsp_sub);   //Keep vsp on whole numbers to keep things working properly while (roughly) maintaining the desired curve.
state_timer++;
life_timer++;

switch(state)
{
    case AS_IDLE:
        if(state_timer <= 1)
            activated = false;
        
        if(activated)
        {
            state = AS_DROP;
            state_timer = 0;
        }

        vsp_sub = 0;
        vsp = 0;

        break;
    
    case AS_DROP:
        if(vsp_sub <= drop_speed_max)   //Accelerate down
            vsp_sub += grav_sub;

        //Bounce if it hits the ground.
        if(place_meeting(x, y + cage_height + vsp, asset_get("par_block")))
        {
            state = AS_BOUNCE;
            state_timer = 0;

            with(asset_get("oPlayer"))
            {
                if(y == other.y && !free)
                    y = get_stage_data(SD_Y_POS) - other.cage_height - 8;
            }

            y = get_stage_data(SD_Y_POS) - cage_height - 8;

        }

        //Check if player is inside the grab box while falling. If it's the case, capture them.
        with(asset_get("oPlayer"))
        {   
            var rp_com = y - (bbox_bottom - bbox_top) / 2;  //Center of mass.

            if(other.vsp == other.drop_speed_max && !invincible && state != PS_AIR_DODGE)
            {
                if(x >= other.x - other.grab_box_width / 2 && x <= other.x + other.grab_box_width / 2 && rp_com < other.y + other.grab_box_height && rp_com > other.y + 10)
                {
                    other.captured_player = id;
                    other.state = AS_GRAB_PAUSE;
                    other.state_timer = 0;
                }
            }
        }

        break;
    
    case AS_BOUNCE:
        vsp_sub = 0;
        vsp = 0;
        bounce_wait_timer++;
        
        if(bounce_wait_timer == bounce_wait)
        {
            bounce_wait_timer = 0;
            state = AS_REEL;
            state_timer = 0;
        }

        break;
    
    case AS_REEL:
        vsp_sub = reel_speed;
        
        if(y <= get_marker_y(number) + 1)
        {
            state = AS_IDLE;
            state_timer = 0;
        }

        break;
    
    case AS_GRAB_PAUSE:
        var pause_length = 10;
        vsp_sub = 0;

        if(state_timer == pause_length)
        {
            state = AS_REEL;
            state_timer = 0;
        }

        break;
}

if(instance_exists(captured_player))
{
    with(captured_player)
    {
        if(point_distance(0, 0, old_hsp, old_vsp) < other.grab_armor)
        {
            hsp_old = 0;
            vsp_old = 0;

            x = other.x;
            y = other.y + other.cage_player_offset_y + (bbox_bottom - bbox_top) / 2;

            set_state(PS_PRATFALL);

            hitstop = 2;
            hitpause = true;

            can_fast_fall = false;

            soft_armor = other.grab_armor;

            force_depth = true;
            depth = other.depth + 1;
        }
        else
            other.captured_player = noone;
    }

    grab_timer++;

    if(grab_timer >= grab_time_max)
    {
        with(captured_player)
            set_state(PS_IDLE_AIR);
        captured_player = noone;
        grab_timer = 0;
    }
}