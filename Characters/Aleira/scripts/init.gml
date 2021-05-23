hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//Move variables
dattack_earth_armor = 18;

//Stance Variables
stance = 0; //0 = Fire, 1 = Air, 2 = Water, 3 = Earth
num_stances = 4;    //Number of stances.
stance_change_time = 0; //Time that stance changed.
stance_color_region = 0;
flash_color = c_white;
color_change_time = 15; //Amount of time it takes to change colors
color_change_overshoot = -10;

var stance_color_fire = c_red;
var stance_color_air = c_purple;
var stance_color_water = c_blue;
var stance_color_earth = c_green;

stance_colors = [stance_color_fire, stance_color_air, stance_color_water, stance_color_earth];

stance_color_current = stance_colors[0];

stance_ticker = 0;  //Action counter. Ticks up when a stance action is performed. When it ticks up ticker_segment_length, can change stances.
ticker_segment_length = 4;  //Number of stance actions required to change stances.
ticker_max = ticker_segment_length * num_stances;   //Number of ticks to get around the whole tracking clock UI element. For cosmetic purposes only.

//Moves that increase the stance value by 1
forward_moves = ds_list_create();
forward_moves[| 0] = AT_DTILT;
forward_moves[| 1] = AT_DSTRONG;
forward_moves[| 2] = AT_DAIR;

//Moves that increase the stance value by 2.
skip_moves = ds_list_create();
skip_moves[| 0] = AT_FSTRONG;
skip_moves[| 1] = AT_DATTACK;

//Moves that increase the stance value by 3.
back_moves = ds_list_create();
back_moves[| 0] = AT_UTILT;
// back_moves[| 1] = AT_USTRONG;
back_moves[| 2] = AT_UAIR;

//Fire Stats
fire_walk_anim_speed = .15;
fire_dash_anim_speed = .25;

fire_walk_speed = 3.5;
fire_walk_accel = 0.35;
fire_initial_dash_time = 14;
fire_initial_dash_speed = 7;
fire_dash_speed = 6.75;
fire_dash_turn_time = 10;
fire_dash_turn_accel = 1.5;
fire_moonwalk_accel = 1.2;

fire_jump_speed = 10.75;
fire_short_hop_speed = 6;
fire_djump_speed = 10;
fire_max_jump_hsp = 4;
fire_air_max_speed = 4;
fire_air_accel = 0.35;

fire_air_friction = .05;
fire_max_djumps = 1;
fire_max_fall = 10;
fire_fast_fall = 14;
fire_gravity_speed = .55;

fire_knockback_adj = 1.0;

fire_wave_land_time = 9;
fire_wave_land_adj = 1.15;
fire_wave_friction = .07;

//Air Stats
air_walk_anim_speed = .125;
air_dash_anim_speed = .25;

air_walk_speed = 3;
air_walk_accel = 0.2;
air_initial_dash_time = 8;
air_initial_dash_speed = 4.5;
air_dash_speed = 5.75;
air_dash_turn_time = 10;
air_dash_turn_accel = 1.5;
air_moonwalk_accel = 1.15;

air_jump_speed = 7.6;
air_short_hop_speed = 5;
air_djump_speed = 8;
air_max_jump_hsp = 6;
air_air_max_speed = 6;
air_air_accel = 0.375;

air_air_friction = .03;
air_max_djumps = 2;
air_max_fall = 8;
air_fast_fall = 11.5;
air_gravity_speed = 0.3;

air_knockback_adj = 1.15;

air_wave_land_time = 7;
air_wave_land_adj = 1.15;
air_wave_friction = .07;

//Water Stats
water_walk_anim_speed = .15;
water_dash_anim_speed = .25;

water_walk_speed = 3.25;
water_walk_accel = .2;
water_initial_dash_time = 8;
water_initial_dash_speed = 7;
water_dash_speed = 6;
water_dash_turn_time = 12;
water_dash_turn_accel = 0.1;
water_moonwalk_accel = 1.5;

water_jump_speed = 10;
water_short_hop_speed = 6.5;
water_djump_speed = 11.5;
water_max_jump_hsp = 4;
water_air_max_speed = 4;
water_air_accel = 0.15;

water_air_friction = .04;
water_max_djumps = 1;
water_max_fall = 9.5;
water_fast_fall = 12.5;
water_gravity_speed = .45;

water_knockback_adj = 1.0;

water_wave_land_time = 11;
water_wave_land_adj = 1.25;
water_wave_friction = .07;

//Earth Stats
earth_walk_anim_speed = .125;
earth_dash_anim_speed = .25;

earth_walk_speed = 3.25;
earth_walk_accel = 0.3;
earth_initial_dash_time = 10;
earth_initial_dash_speed = 6;
earth_dash_speed = 5.5;
earth_dash_turn_time = 10;
earth_dash_turn_accel = 0.5;
earth_moonwalk_accel = 1.15;

earth_jump_speed = 12;
earth_short_hop_speed = 7.4;
earth_djump_speed = 12;
earth_max_jump_hsp = 4;
earth_air_max_speed = 4;
earth_air_accel = 0.15;

earth_air_friction = .05;
earth_max_djumps = 1;
earth_max_fall = 11;
earth_fast_fall = 16;
earth_gravity_speed = .6;

earth_knockback_adj = 0.95;

earth_wave_land_time = 8;
earth_wave_land_adj = 1.1;
earth_wave_friction = .12;



char_height = 52;
idle_anim_speed = 1/6;
crouch_anim_speed = 1/6;
walk_anim_speed = fire_walk_anim_speed;
dash_anim_speed = fire_dash_anim_speed;
pratfall_anim_speed = .25;


walk_speed = fire_walk_speed;
walk_accel = fire_walk_accel;
walk_turn_time = 9;
initial_dash_time = fire_initial_dash_time;
initial_dash_speed = fire_initial_dash_speed;
dash_speed = fire_dash_speed;
dash_turn_time = fire_dash_turn_time;
dash_turn_accel = fire_dash_turn_accel;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = fire_moonwalk_accel;

jump_start_time = 5;
jump_speed = fire_jump_speed;
short_hop_speed = fire_short_hop_speed;
djump_speed = fire_djump_speed;
leave_ground_max = 6.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.75; //the maximum hsp you can have when jumping from the ground
air_max_speed = fire_air_max_speed; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = fire_air_accel;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = fire_air_friction;
max_djumps = fire_max_djumps;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
wall_frames = 1; //anim frames before you leave the wall
max_fall = fire_max_fall; //maximum fall speed without fastfalling
fast_fall = fire_fast_fall; //fast fall speed
gravity_speed = fire_gravity_speed;
hitstun_grav = .525;
knockback_adj = fire_knockback_adj; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = fire_wave_land_time;
wave_land_adj = fire_wave_land_adj; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = fire_wave_friction; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 4;
crouch_active_frames = 5;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_syl");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

small_wood_hfx = hit_fx_create(sprite_get("hfx_wood_small"), 18);
large_wood_hfx = hit_fx_create(sprite_get("hfx_wood_large"), 21);
xlarge_wood_hfx = hit_fx_create(sprite_get("hfx_wood_xlarge"), 28);
small_leaf_hfx = hit_fx_create(sprite_get("hfx_leaf_small"), 12);
xlarge_leaf_hfx = hit_fx_create(sprite_get("hfx_leaf_xlarge"), 28);

//Command Grab (code based on Mawral's template)
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

//External Boom Box Variables.
boom_box_id = noone;
stance_locked = false;

//Hitboxes for moves affected by stance
stance_affected_moves = [AT_NAIR,
                         AT_NSPECIAL_2,
                         AT_DATTACK, AT_DTILT,
                         AT_FTILT,
                         AT_UTILT,
                         AT_DSTRONG,
                         AT_FSTRONG,
                         AT_USTRONG];

move_data = array_create(50, 0);

//Set up the multi-layered arrays
var num_attack_properties = 25;
var num_window_properties = 61;
var max_num_windows = 20;
var num_hitbox_properties = 55;
var max_num_hitboxes = 10;

//Attack data initialization
for(var i = 0; i < array_length(stance_affected_moves); i++) {
    initialize_move_data_entry(stance_affected_moves[i]);
}


//Functions
#define generate_cube_array {
    var ar = array_create(argument0);
    var ar2 = array_create(argument0);

    for(var i = 0; i < argument0; i++) {
        ar2[i] = array_create(argument1);
    }

    for(i = 0; i < argument0; i++) {
        for(j = 0; j < argument1; j++) {
            ar2[@ i][@ j] = [0];
        }
    }

    return ar2;
}

#define initialize_move_data_entry {
    var index = argument0;

    move_data[index] = {
        properties:     [0],//array_create(num_attack_properties),
        windows:        [[0]],//generate_cube_array(max_num_windows, num_window_properties),
        hitboxes:       [[0]],//generate_cube_array(max_num_hitboxes, num_hitbox_properties),
        props_used:     [0],
        win_props_used: [[0]],
        hbx_props_used: [[0]]
    }
}