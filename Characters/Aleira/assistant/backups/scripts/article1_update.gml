//Article 1 Update

//Important Temp Variables
var time_since_creation = get_gameplay_time() - creation_time;
var player_in_range = array_create(5, false);

with(asset_get("oPlayer")) {
    var alei_dist_to_boombox;

    if(y - (bbox_bottom - bbox_top) / 2  <= other.y - (other.bbox_bottom - other.bbox_top) / 2) {
        alei_dist_to_boombox = point_distance(x, y, other.x, other.y - (other.bbox_bottom - other.bbox_top) / 2);
    } else {
        alei_dist_to_boombox = point_distance(x, y - (bbox_bottom - bbox_top), other.x, other.y - (other.bbox_bottom - other.bbox_top) / 2);
    }

    if(alei_dist_to_boombox <= other.radius) {
        with(other) {
            player_in_range[other.player] = true;
        }
    }
}

if(init = true) {
    init = false;
    print_debug(string(element));
}

else {
    //Elemental Behavior
    switch(element) {
        case 0: //Fire Behavior
            measure_progress = time_since_creation % bar_length;
            // print_debug("measure progress: " + string(measure_progress div frames_per_beat));
            if(measure_progress == 0 && !bad_timing_lockout) {
                can_burst = true;
                print_debug("can burst");
            }

            if(can_burst && measure_progress < frames_per_beat && player_in_range[player] && player_id.special_pressed) {
                print_debug("pressed on time");
                can_burst = false;
            }

            if(measure_progress >= frames_per_beat && player_in_range[player] && player_id.special_pressed) {
                bad_timing_lockout = bar_length + (bar_length - measure_progress);
            }

            if(bad_timing_lockout > 0) {
                bad_timing_lockout--;
            }
            break;
        
        case 1: //Air Behavior
            with(asset_get("oPlayer")) {
                if(other.player_in_range[player] && free) {
                    vsp += gravity_speed;
                }
            }
        
        case 3: //Earth Behavior
            // print_debug(string(player) + " " + string(player_in_range[player]));
            if(player_in_range[player]) {
                player_id.stance_locked = true;
            } else {
                player_id.stance_locked = false;
            }

        default:
            break;
    }

    if(instance_exists(player_id.boom_box_id) && player_id.boom_box_id != self) {
        instance_destroy();
    }
}

//Animation
if(image_index < idle_anim_frame_start) {
    image_index += anim_speed;
} else {
    image_index = (image_index - idle_anim_frame_start + anim_speed) % idle_anim_length + idle_anim_frame_start;
}