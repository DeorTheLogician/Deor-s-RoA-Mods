//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR || attack == AT_DSPECIAL_AIR){ //no B-reversing Uspecial or Dspecial, since they require a quick backward input to aim
    trigger_b_reverse();
}

switch(attack)
{
    case AT_DSPECIAL:
        if(!free && window == 2 && window_timer == 1) {
            boom_box_id = instance_create(x, y, "obj_article1");
            boom_box_id.player_id = self;
            boom_box_id.player = player;
            boom_box_id.element = stance;
        }
        break;

    case AT_FSPECIAL:
        if(window == 2 && window_timer < get_window_value(attack, window, AG_WINDOW_LENGTH)) {
            invincible = true;
            invincible_time = 1;
        }
        break;
    
    //Command grab code based on Mawral's template.
    case AT_NSPECIAL:
        if (window == 1 && window_timer == 1) { 
            grabbed_player_obj = noone; 
            grabbed_player_relative_x = 0;
            grabbed_player_relative_y = 0;
        }
        break;
    
    case AT_NSPECIAL_2:
        //keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}

        break;

    case AT_DATTACK:
        switch(stance) {
            case 3:
                if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                    soft_armor = dattack_earth_armor;
                } else if(window == 2) {
                    soft_armor = dattack_earth_armor - 2 * window_timer;
                    if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
                        soft_armor = 0;
                    }
                } else {
                    soft_armor = 0;
                }
                break;
        }
        break;
    
    case AT_UTILT:
        if(window == 4 && free) {
            window = 5;
            window_timer = 0;//max(0, get_window_value(attack, window, AG_WINDOW_LENGTH) - window_timer - 1);
        }

    default:
        break;
}

if(window == 1 && window_timer == 1) {
    stance_ticker = (stance_ticker + 1) % ticker_max;
}

//Temporary stance changer.
if(window >= get_attack_value(attack, AG_NUM_WINDOWS) && window_timer == 1 && stance_ticker % ticker_segment_length == 0) {
    if(ds_list_find_index(forward_moves, attack) != -1) {
        adjust_stance(1, num_stances);
    } else if(ds_list_find_index(skip_moves, attack) != -1) {
        adjust_stance(2, num_stances);
    } else if(ds_list_find_index(back_moves, attack) != -1) {
        adjust_stance(3, num_stances);
    }
}

//Functions:
#define adjust_stance {
    //Adds argument0 mod argument1 to state and updates stats.
    //argument0 = number of steps forward
    //argument1 = number of stances
    var load_start = current_time;

    if(!stance_locked) {
        set_stance((stance + argument0) % argument1);
        set_stance_stats(stance);
        reset_moves(stance);
    }
    
    // print_debug(string(current_time - load_start - 17) + "ms overshoot");
}

#define set_stance {
    stance = argument0;
    stance_change_time = get_gameplay_time();
    set_stance_stats(stance);
    reset_moves(stance);
}

#define reset_moves {
    //Resets all values in all moves affected by stances.
    var i, j, k, _attack;
    var _stance = argument0;

    for(i = 0; i < array_length(stance_affected_moves); i++) {
        _attack = stance_affected_moves[i];

        //Reset attack properties
        for(j = 1; j < array_length(move_data[_attack].props_used); j++) {
            var _index = move_data[_attack].props_used[j];
            var property = move_data[_attack].properties[_index];
            if(array_length(property) == 4) {
                // print_debug(string(property));
                set_attack_value(_attack, _index, property[_stance]);
            }
        }

        //Reset window properties
        for(j = 1; j < array_length(move_data[_attack].win_props_used); j++) {
            for(k = 1; k < array_length(move_data[_attack].win_props_used[j]); k++) {
                var _index = move_data[_attack].win_props_used[j][k];
                var property = move_data[_attack].windows[j][_index];
                if(array_length(property) == 4) {
                    set_window_value(_attack, j, _index, property[_stance]);
                }                
            }
        }

        //Reset hitbox properties
        for(j = 1; j < array_length(move_data[_attack].hbx_props_used); j++) {
            for(k = 1; k < array_length(move_data[_attack].hbx_props_used[j]); k++) {
                var _index = move_data[_attack].hbx_props_used[j][k];
                var property = move_data[_attack].hitboxes[j][_index];
                if(array_length(property) == 4) {
                    set_hitbox_value(_attack, j, _index, property[_stance]);
                }
            }
        }
    }
}

#define set_stance_stats {
    //Sets stats affected by energy level.
    switch(argument0) {
        case 0: //Change stats to fire.
            walk_anim_speed = fire_walk_anim_speed;
            dash_anim_speed = fire_dash_anim_speed;

            walk_speed = fire_walk_speed;
            walk_accel = fire_walk_accel;
            initial_dash_time = fire_initial_dash_time;
            initial_dash_speed = fire_initial_dash_speed;
            dash_speed = fire_dash_speed;
            dash_turn_time = fire_dash_turn_time;
            dash_turn_accel = fire_dash_turn_accel;
            moonwalk_accel = fire_moonwalk_accel;

            jump_speed = fire_jump_speed;
            short_hop_speed = fire_short_hop_speed;
            djump_speed = fire_djump_speed;
            max_jump_hsp = fire_max_jump_hsp;
            air_max_speed = fire_air_max_speed;
            air_accel = fire_air_accel;

            air_friction = fire_air_friction;
            max_djumps = fire_max_djumps;
            max_fall = fire_max_fall;
            fast_fall = fire_fast_fall;
            gravity_speed = fire_gravity_speed;

            knockback_adj = fire_knockback_adj;

            wave_land_time = fire_wave_land_time;
            wave_land_adj = fire_wave_land_adj;
            wave_friction = fire_wave_friction;
            break;
        
        case 1: //Change stats to air.
            walk_anim_speed = air_walk_anim_speed;
            dash_anim_speed = air_dash_anim_speed;

            walk_speed = air_walk_speed;
            walk_accel = air_walk_accel;
            initial_dash_time = air_initial_dash_time;
            initial_dash_speed = air_initial_dash_speed;
            dash_speed = air_dash_speed;
            dash_turn_time = air_dash_turn_time;
            dash_turn_accel = air_dash_turn_accel;
            moonwalk_accel = air_moonwalk_accel;

            jump_speed = air_jump_speed;
            short_hop_speed = air_short_hop_speed;
            djump_speed = air_djump_speed;
            max_jump_hsp = air_max_jump_hsp;
            air_max_speed = air_air_max_speed;
            air_accel = air_air_accel;

            air_friction = air_air_friction;
            max_djumps = air_max_djumps;
            max_fall = air_max_fall;
            fast_fall = air_fast_fall;
            gravity_speed = air_gravity_speed;

            knockback_adj = air_knockback_adj;

            wave_land_time = air_wave_land_time;
            wave_land_adj = air_wave_land_adj;
            wave_friction = air_wave_friction;
            break;
        
        case 2: //Change stats to water.
            walk_anim_speed = water_walk_anim_speed;
            dash_anim_speed = water_dash_anim_speed;

            walk_speed = water_walk_speed;
            walk_accel = water_walk_accel;
            initial_dash_time = water_initial_dash_time;
            initial_dash_speed = water_initial_dash_speed;
            dash_speed = water_dash_speed;
            dash_turn_time = water_dash_turn_time;
            dash_turn_accel = water_dash_turn_accel;
            moonwalk_accel = water_moonwalk_accel;

            jump_speed = water_jump_speed;
            short_hop_speed = water_short_hop_speed;
            djump_speed = water_djump_speed;
            max_jump_hsp = water_max_jump_hsp;
            air_max_speed = water_air_max_speed;
            air_accel = water_air_accel;

            air_friction = water_air_friction;
            max_djumps = water_max_djumps;
            max_fall = water_max_fall;
            fast_fall = water_fast_fall;
            gravity_speed = water_gravity_speed;

            knockback_adj = water_knockback_adj;

            wave_land_time = water_wave_land_time;
            wave_land_adj = water_wave_land_adj;
            wave_friction = water_wave_friction;
            break;

        case 3: //Change stats to earth.
            walk_anim_speed = earth_walk_anim_speed;
            dash_anim_speed = earth_dash_anim_speed;

            walk_speed = earth_walk_speed;
            walk_accel = earth_walk_accel;
            initial_dash_time = earth_initial_dash_time;
            initial_dash_speed = earth_initial_dash_speed;
            dash_speed = earth_dash_speed;
            dash_turn_time = earth_dash_turn_time;
            dash_turn_accel = earth_dash_turn_accel;
            moonwalk_accel = earth_moonwalk_accel;

            jump_speed = earth_jump_speed;
            short_hop_speed = earth_short_hop_speed;
            djump_speed = earth_djump_speed;
            max_jump_hsp = earth_max_jump_hsp;
            air_max_speed = earth_air_max_speed;
            air_accel = earth_air_accel;

            air_friction = earth_air_friction;
            max_djumps = earth_max_djumps;
            max_fall = earth_max_fall;
            fast_fall = earth_fast_fall;
            gravity_speed = earth_gravity_speed;

            knockback_adj = earth_knockback_adj;

            wave_land_time = earth_wave_land_time;
            wave_land_adj = earth_wave_land_adj;
            wave_friction = earth_wave_friction;
            break;
    }
}

// #define get_move_window_property {
//     // get_move_window_property(move, window, index, stance)
//     // Gets a window property's value for a given stance within the move data strucure.
//     //
//     var move = argument0;
//     var wndw = argument1;
//     var index = argument2;
//     var _stance = argument3;

//     return move_data[move].windows[index][_stance];
// }

// vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define make_hitbox // Version 0
    // make_hitbox(_attack_name, _index, (value_name, value)... )
    // Sets hitbox values for the given hitbox.
    // e.g. make_hitbox(AT_BAIR, 1,
    //         HG_PARENT_HITBOX, 1,
    //         HG_HITBOX_TYPE, 1
    //     );
    var _attack_name = argument[0];
    var _index = argument[1];
    for(var i=2; i<=argument_count-1; i+=2) {
        set_hitbox_value(
            _attack_name, _index, argument[i], argument[i+1]
        )
    }
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!