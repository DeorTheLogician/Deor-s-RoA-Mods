//Article 1 Update

//Important Temp Variables
var time_since_creation = get_gameplay_time() - creation_time;
player_in_range = array_create(5, false);

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
    sprite_index = sprite_get("berimbau" + string(element));
}

else {
    //Elemental Behavior
    switch(element) {
        case 0: //Fire Behavior
            measure_progress = time_since_creation % bar_length;
            
            if(measure_progress == 0 && !bad_timing_lockout) {
                can_burst = true;
                print_debug("can burst");
            }

            if(can_burst && (measure_progress < leniancy || measure_progress > bar_length - leniancy) && player_in_range[player] && player_id.attack_pressed) {
                print_debug("pressed on time");
                can_burst = false;
            }

            if(!(measure_progress < leniancy || measure_progress > bar_length - leniancy) && player_in_range[player] && player_id.attack_pressed) {
                print_debug("pressed at " + string  (measure_progress));
                bad_timing_lockout = bar_length + (bar_length - measure_progress);
            }

            if(bad_timing_lockout > 0) {
                bad_timing_lockout--;
            }
            break;
        
        case 1: //Air Behavior
            with(asset_get("oPlayer")) {
                with(other) {
                    if(player_in_range[other.player] && other.free && other.vsp >= 0 && other.state_cat != SC_HITSTUN) {
                        other.vsp -= other.gravity_speed * gravity_reduction;
                    }
                }
            }
            break;
        
        case 2: //Water Behavior
            with(asset_get("oPlayer")) {
                with(other) {
                    if(player_in_range[other.player] && other.state == PS_HITSTUN && !other.hitstop) {
                        other.hsp *= slow_factor;
                        other.vsp *= slow_factor;

                        var dam = get_player_damage(other.player);
                        other.state_timer += hitstun_decay_max*power(hitstun_decay_factor,dam);
                    }
                }
            }
            break;
        
        case 3: //Earth Behavior
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