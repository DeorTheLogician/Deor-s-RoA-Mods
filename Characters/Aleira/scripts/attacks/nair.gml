//Database Initialization
//  Properties
set_move_property(AT_NAIR, AG_LANDING_LAG, [4, 6, 4, 8]);

//  Windows
set_move_num_windows(AT_NAIR, 3);
set_move_window_property(AT_NAIR, 1, AG_WINDOW_LENGTH, [ 6,  6,  6, 10]);

set_move_window_property(AT_NAIR, 2, AG_WINDOW_LENGTH, [12, 16, 12,  3]);
set_move_window_property(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, [ 3, 12,  3,  3]);
set_move_window_property(AT_NAIR, 2, AG_WINDOW_HAS_SFX, [ 0,  1,  0,  0]);
set_move_window_property(AT_NAIR, 2, AG_WINDOW_SFX, [ 0,  asset_get("sfx_swipe_medium2"),  0,  0]);
set_move_window_property(AT_NAIR, 2, AG_WINDOW_SFX_FRAME, [ 0,  8,  0,  0]);
set_move_window_property(AT_NAIR, 2, AG_WINDOW_VSPEED, [ 0, -3,  0,  0]);

set_move_window_property(AT_NAIR, 3, AG_WINDOW_LENGTH, [ 7,  9,  7, 12]);

//  Hitboxes
set_move_num_hitboxes(AT_NAIR, 2);
set_move_hitbox_property(AT_NAIR, 1, HG_LIFETIME, [12,  6, 12,  3]);
set_move_hitbox_property(AT_NAIR, 1, HG_WIDTH, [118,128, 118, 118]);
set_move_hitbox_property(AT_NAIR, 1, HG_HEIGHT, [53, 62, 53, 53]);
set_move_hitbox_property(AT_NAIR, 1, HG_DAMAGE, [ 7,  4,  7, 16]);
set_move_hitbox_property(AT_NAIR, 1, HG_ANGLE, [80, 85, 80,  55]);
set_move_hitbox_property(AT_NAIR, 1, HG_BASE_KNOCKBACK, [ 7,  4,  4,  6]);
set_move_hitbox_property(AT_NAIR, 1, HG_KNOCKBACK_SCALING, [.5, .25, .5,1.2]);
set_move_hitbox_property(AT_NAIR, 1, HG_FINAL_BASE_KNOCKBACK, [ 4,  4,  7,  6]);
set_move_hitbox_property(AT_NAIR, 1, HG_VISUAL_EFFECT, [small_wood_hfx, small_wood_hfx, small_wood_hfx, large_wood_hfx]);
set_move_hitbox_property(AT_NAIR, 1, HG_HIT_SFX, [asset_get("sfx_blow_medium2"), asset_get("sfx_blow_weak1"), asset_get("sfx_blow_medium2"), asset_get("sfx_blow_heavy2")]);
set_move_hitbox_property(AT_NAIR, 1, HG_HITBOX_GROUP, [ 0,  1,  0,  0]);

set_move_hitbox_property(AT_NAIR, 2, HG_LIFETIME, [12,  6, 12,  3]);
set_move_hitbox_property(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, [ 0,  11,  0,  0]);
set_move_hitbox_property(AT_NAIR, 2, HG_HITBOX_Y, [-49,-66,-49,-49]);
set_move_hitbox_property(AT_NAIR, 2, HG_WIDTH, [59,128, 59, 59]);
set_move_hitbox_property(AT_NAIR, 2, HG_HEIGHT, [80, 62, 80, 80]);
set_move_hitbox_property(AT_NAIR, 2, HG_SHAPE, [ 0,  2,  0,  0]);
set_move_hitbox_property(AT_NAIR, 2, HG_DAMAGE, [ 5,  4,  5,  7]);
set_move_hitbox_property(AT_NAIR, 2, HG_ANGLE, [70, 80, 70,  75]);
set_move_hitbox_property(AT_NAIR, 2, HG_BASE_KNOCKBACK, [ 5,  6,  3,  5]);
set_move_hitbox_property(AT_NAIR, 2, HG_KNOCKBACK_SCALING, [.5,  .6, .5, .5]);
set_move_hitbox_property(AT_NAIR, 2, HG_FINAL_BASE_KNOCKBACK, [ 3,  6,  5,  5]);
set_move_hitbox_property(AT_NAIR, 2, HG_HIT_SFX, [asset_get("sfx_blow_weak2"), asset_get("sfx_blow_medium1"), asset_get("sfx_blow_weak2"), asset_get("sfx_blow_medium2")]);


//Value Setting
set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, move_data[AT_NAIR].properties[AG_LANDING_LAG][stance]);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, move_data[AT_NAIR].windows[1][AG_WINDOW_LENGTH][stance]);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, move_data[AT_NAIR].windows[2][AG_WINDOW_LENGTH][stance]);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, move_data[AT_NAIR].windows[2][AG_WINDOW_ANIM_FRAMES][stance]);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, move_data[AT_NAIR].windows[2][AG_WINDOW_HAS_SFX][stance]);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, move_data[AT_NAIR].windows[2][AG_WINDOW_SFX][stance]);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX_FRAME, move_data[AT_NAIR].windows[2][AG_WINDOW_SFX_FRAME][stance]);
set_window_value(AT_NAIR, 2, AG_WINDOW_VSPEED, move_data[AT_NAIR].windows[2][AG_WINDOW_VSPEED][stance]);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, move_data[AT_NAIR].windows[3][AG_WINDOW_LENGTH][stance]);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 2);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, move_data[AT_NAIR].hitboxes[1][HG_LIFETIME][stance]);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, -1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -66);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, move_data[AT_NAIR].hitboxes[1][HG_WIDTH][stance]);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, move_data[AT_NAIR].hitboxes[1][HG_HEIGHT][stance]);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, move_data[AT_NAIR].hitboxes[1][HG_DAMAGE][stance]);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, move_data[AT_NAIR].hitboxes[1][HG_ANGLE][stance]);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, move_data[AT_NAIR].hitboxes[1][HG_BASE_KNOCKBACK][stance]);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, move_data[AT_NAIR].hitboxes[1][HG_KNOCKBACK_SCALING][stance]);
set_hitbox_value(AT_NAIR, 1, HG_FINAL_BASE_KNOCKBACK, move_data[AT_NAIR].hitboxes[1][HG_FINAL_BASE_KNOCKBACK][stance]);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, move_data[AT_NAIR].hitboxes[1][HG_VISUAL_EFFECT][stance]);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, move_data[AT_NAIR].hitboxes[1][HG_HIT_SFX][stance]);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, move_data[AT_NAIR].hitboxes[1][HG_HITBOX_GROUP][stance]);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, move_data[AT_NAIR].hitboxes[2][HG_LIFETIME][stance]);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, move_data[AT_NAIR].hitboxes[2][HG_WINDOW_CREATION_FRAME][stance]);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, move_data[AT_NAIR].hitboxes[2][HG_HITBOX_Y][stance]);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, move_data[AT_NAIR].hitboxes[2][HG_WIDTH][stance]);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, move_data[AT_NAIR].hitboxes[2][HG_HEIGHT][stance]);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, move_data[AT_NAIR].hitboxes[2][HG_SHAPE][stance])
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, move_data[AT_NAIR].hitboxes[2][HG_DAMAGE][stance]);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, move_data[AT_NAIR].hitboxes[2][HG_ANGLE][stance]);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, move_data[AT_NAIR].hitboxes[2][HG_BASE_KNOCKBACK][stance]);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, move_data[AT_NAIR].hitboxes[2][HG_KNOCKBACK_SCALING][stance]);
set_hitbox_value(AT_NAIR, 2, HG_FINAL_BASE_KNOCKBACK, move_data[AT_NAIR].hitboxes[2][HG_FINAL_BASE_KNOCKBACK][stance]);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, move_data[AT_NAIR].hitboxes[2][HG_HIT_SFX][stance]);


//Functions
//  Setters
#define set_move_property {
    // set_move_property(move, index, values[])
    // Sets a move property's value within the move data strucure.
    //
    var move = argument0;
    var index = argument1;
    var value = argument2;

    move_data[move].properties[@ index] = value;
    move_data[move].props_used[array_length(move_data[move].props_used)] = index;
}

#define set_move_window_property {
    // set_move_property(move, window, index, values[])
    // Sets a window property's value within the move data strucure.
    //
    var move = argument0;
    var _window = argument1;
    var index = argument2;
    var value = argument3;

    move_data[move].windows[_window][@ index] = value;
    move_data[move].win_props_used[_window][@ array_length(move_data[move].win_props_used[_window])] = index;
}

#define set_move_hitbox_property {
    // set_move_property(move, hitbox, index, values[])
    // Sets a window property's value within the move data strucure.
    //
    var move = argument0;
    var hbox = argument1;
    var index = argument2;
    var value = argument3;

    move_data[move].hitboxes[hbox][@ index] = value;
    move_data[move].hbx_props_used[hbox][@ array_length(move_data[move].hbx_props_used[hbox])] = index;
}

#define set_move_num_windows {
    var move = argument0;
    var num_windows = argument1;

    for(var i = num_windows; i > 0; i--){
        move_data[move].win_props_used[i] = [0];
        move_data[move].windows[i] = [0];
    }
}

#define set_move_num_hitboxes {
    var move = argument0;
    var num_hboxes = argument1;

    for(var i =num_hboxes; i > 0; i--){
        move_data[move].hbx_props_used[i] = [0];
        move_data[move].hitboxes[i] = [0];
    }
}

// //  Getters
// #define get_move_property {
//     // get_move_property(move, index, stance)
//     // Gets a move property's value for a given stance within the move data strucure.
//     //
//     var move = argument0;
//     var index = argument1;
//     var _stance = argument2;

//     return move_data[move].properties[@ index][@ _stance];
// }

// #define get_move_window_property {
//     // get_move_window_property(move, window, index, stance)
//     // Gets a window property's value for a given stance within the move data strucure.
//     //
//     var move = argument0;
//     var _window = argument1;
//     var index = argument2;
//     var _stance = argument3;

//     return move_data[move].windows[@ _window][@ index][@ _stance];
// }

// #define get_move_hitbox_property {
//     // get_move_window_property(move, hitbox, index, stance)
//     // Gets a hitbox property's value for a given stance within the move data strucure.
//     //
//     var move = argument0;
//     var hbox = argument1;
//     var index = argument2;
//     var _stance = argument3;

//     return move_data[move].hitboxes[@ hbox][@ index][@ _stance];
// }