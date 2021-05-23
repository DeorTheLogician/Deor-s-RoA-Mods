//Database Initialization
//  Properties

//  Windows
set_move_num_windows(AT_DATTACK, 5);
set_move_window_property(AT_DATTACK, 1, AG_WINDOW_LENGTH, [ 6,  6,  6, 10]);
set_move_window_property(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, [ 2, 2,  2,  2]);

set_move_window_property(AT_DATTACK, 2, AG_WINDOW_LENGTH, [ 4,  2,  3,  8]);
set_move_window_property(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, [ 2,  1,  2,  1]);
set_move_window_property(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, [ 2,  3,  2,  2]);
set_move_window_property(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, [ 3,  1,  2,  8]);

set_move_window_property(AT_DATTACK, 3, AG_WINDOW_LENGTH, [ 9,  9,  9,  3]);
set_move_window_property(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, [ 3, 3,  3,  3]);
set_move_window_property(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, [ 4,  4,  4,  3]);

set_move_window_property(AT_DATTACK, 4, AG_WINDOW_LENGTH, [ 4,  6,  6,  4]);
set_move_window_property(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, [ 1,  1,  1,  1]);
set_move_window_property(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, [ 7,  7,  7,  7]);

set_move_window_property(AT_DATTACK, 5, AG_WINDOW_LENGTH, [ 15, 15, 15, 18]);
set_move_window_property(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, [ 5,  5,  5,  5]);
set_move_window_property(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, [ 8,  8,  8, 8]);

//  Hitboxes
set_move_num_hitboxes(AT_DATTACK, 5);
set_move_hitbox_property(AT_DATTACK, 1, HG_WINDOW, [ 2, 20,  2, 2])
set_move_hitbox_property(AT_DATTACK, 1, HG_LIFETIME, [ 2,  2,  2,  8]);
set_move_hitbox_property(AT_DATTACK, 1, HG_DAMAGE, [ 8,  8,  1, 16]);
set_move_hitbox_property(AT_DATTACK, 1, HG_ANGLE, [70, 70,361,361]);
set_move_hitbox_property(AT_DATTACK, 1, HG_BASE_KNOCKBACK, [ 8,  8,  5,  8]);
set_move_hitbox_property(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, [.5,  0,  0,.75]);
set_move_hitbox_property(AT_DATTACK, 1, HG_FINAL_BASE_KNOCKBACK, [ 8,  8,  5,  5]);
set_move_hitbox_property(AT_DATTACK, 1, HG_VISUAL_EFFECT, [303,303, 10,192]);
set_move_hitbox_property(AT_DATTACK, 1, HG_HIT_SFX, [asset_get("sfx_zetter_upb_hit"), asset_get("sfx_blow_weak1"), asset_get("sfx_waterhit_medium"), asset_get("sfx_blow_heavy2")]);

set_move_hitbox_property(AT_DATTACK, 2, HG_WINDOW, [ 3,  3,  3,  20]);
set_move_hitbox_property(AT_DATTACK, 2, HG_EFFECT, [ 1,  0,  0,  0]);
set_move_hitbox_property(AT_DATTACK, 2, HG_VISUAL_EFFECT, [ 3,194,  5,193]);
set_move_hitbox_property(AT_DATTACK, 2, HG_HIT_SFX, [asset_get("sfx_burnapplied"), asset_get("sfx_blow_weak1"), asset_get("sfx_waterhit_weak"), asset_get("sfx_blow_medium2")]);


set_move_hitbox_property(AT_DATTACK, 3, HG_WINDOW, [ 3,  3,  3,  20]);
set_move_hitbox_property(AT_DATTACK, 3, HG_EFFECT, [ 1,  0,  0,  0]);
set_move_hitbox_property(AT_DATTACK, 3, HG_VISUAL_EFFECT, [ 3,194,  6,193]);
set_move_hitbox_property(AT_DATTACK, 3, HG_HIT_SFX, [asset_get("sfx_burnapplied"), asset_get("sfx_blow_weak1"), asset_get("sfx_waterhit_weak"), asset_get("sfx_blow_heavy2")]);


set_move_hitbox_property(AT_DATTACK, 4, HG_WINDOW, [ 3,  3,  3,  20]);
set_move_hitbox_property(AT_DATTACK, 4, HG_EFFECT, [ 1,  0,  0,  0]);
set_move_hitbox_property(AT_DATTACK, 4, HG_VISUAL_EFFECT, [ 3,194,  7,193]);
set_move_hitbox_property(AT_DATTACK, 4, HG_HIT_SFX, [asset_get("sfx_burnapplied"), asset_get("sfx_blow_weak1"), asset_get("sfx_waterhit_weak"), asset_get("sfx_blow_medium2")]);

set_move_hitbox_property(AT_DATTACK, 5, HG_LIFETIME, [4,  6,  6,  4]);
set_move_hitbox_property(AT_DATTACK, 5, HG_DAMAGE, [ 6,  7,  8, 16]);
set_move_hitbox_property(AT_DATTACK, 5, HG_ANGLE, [60, 70,361, 60]);
set_move_hitbox_property(AT_DATTACK, 5, HG_EFFECT, [ 0,  0, 0,  0]);
set_move_hitbox_property(AT_DATTACK, 5, HG_BASE_KNOCKBACK, [ 6,  8,  7,  6]);
set_move_hitbox_property(AT_DATTACK, 5, HG_KNOCKBACK_SCALING, [.5,.25, .5, .5]);
set_move_hitbox_property(AT_DATTACK, 5, HG_VISUAL_EFFECT, [148,156,195,192]);
set_move_hitbox_property(AT_DATTACK, 5, HG_HIT_SFX, [asset_get("sfx_blow_medium2"), asset_get("sfx_blow_medium1"), asset_get("sfx_waterhit_heavy2"), asset_get("sfx_blow_medium2")]);


//Value Setting
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, get_move_window_property(AT_DATTACK, 1, AG_WINDOW_LENGTH, stance));
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, get_move_window_property(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, stance));
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 15);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, get_move_window_property(AT_DATTACK, 2, AG_WINDOW_LENGTH, stance));
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, get_move_window_property(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, stance));
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, get_move_window_property(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, stance));
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, get_move_window_property(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, stance));

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, get_move_window_property(AT_DATTACK, 3, AG_WINDOW_LENGTH, stance));
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, get_move_window_property(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, stance));
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, get_move_window_property(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, stance));
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, get_move_window_property(AT_DATTACK, 4, AG_WINDOW_LENGTH, stance));
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, get_move_window_property(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, stance));
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, get_move_window_property(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, stance));

set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, get_move_window_property(AT_DATTACK, 5, AG_WINDOW_LENGTH, stance));
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, get_move_window_property(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, stance));
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, get_move_window_property(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, stance));
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, true);

set_num_hitboxes(AT_DATTACK, 5);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, get_move_hitbox_property(AT_DATTACK, 1, HG_WINDOW, stance));
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, get_move_hitbox_property(AT_DATTACK, 1, HG_LIFETIME, stance));
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 122);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 81);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, get_move_hitbox_property(AT_DATTACK, 1, HG_DAMAGE, stance));
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, get_move_hitbox_property(AT_DATTACK, 1, HG_ANGLE, stance));
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_DATTACK, 1, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_DATTACK, 1, HG_FINAL_BASE_KNOCKBACK, get_move_hitbox_property(AT_DATTACK, 1, HG_FINAL_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, get_move_hitbox_property(AT_DATTACK, 1, HG_VISUAL_EFFECT, stance));
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, get_move_hitbox_property(AT_DATTACK, 1, HG_HIT_SFX, stance));
set_hitbox_value(AT_DATTACK, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 1, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, get_move_hitbox_property(AT_DATTACK, 2, HG_WINDOW, stance));
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 126);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 52);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 2, HG_EFFECT, get_move_hitbox_property(AT_DATTACK, 2, HG_EFFECT, stance));
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, get_move_hitbox_property(AT_DATTACK, 2, HG_VISUAL_EFFECT, stance));
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, get_move_hitbox_property(AT_DATTACK, 2, HG_HIT_SFX, stance));
set_hitbox_value(AT_DATTACK, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 2, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, get_move_hitbox_property(AT_DATTACK, 3, HG_WINDOW, stance));
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 6);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 126);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 52);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 3, HG_EFFECT, get_move_hitbox_property(AT_DATTACK, 3, HG_EFFECT, stance));
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, get_move_hitbox_property(AT_DATTACK, 3, HG_VISUAL_EFFECT, stance));
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, get_move_hitbox_property(AT_DATTACK, 3, HG_HIT_SFX, stance));
set_hitbox_value(AT_DATTACK, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 3, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, get_move_hitbox_property(AT_DATTACK, 4, HG_WINDOW, stance));
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 128);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 52);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 4, HG_EFFECT, get_move_hitbox_property(AT_DATTACK, 4, HG_EFFECT, stance));
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, get_move_hitbox_property(AT_DATTACK, 4, HG_VISUAL_EFFECT, stance));
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, get_move_hitbox_property(AT_DATTACK, 4, HG_HIT_SFX, stance));
set_hitbox_value(AT_DATTACK, 4, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 4, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, get_move_hitbox_property(AT_DATTACK, 5, HG_LIFETIME, stance));
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DATTACK, 5, HG_WIDTH, 126);
set_hitbox_value(AT_DATTACK, 5, HG_HEIGHT, 78);
set_hitbox_value(AT_DATTACK, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, get_move_hitbox_property(AT_DATTACK, 5, HG_DAMAGE, stance));
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE, get_move_hitbox_property(AT_DATTACK, 5, HG_ANGLE, stance));
set_hitbox_value(AT_DATTACK, 5, HG_EFFECT, get_move_hitbox_property(AT_DATTACK, 5, HG_EFFECT, stance));
set_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_DATTACK, 5, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_DATTACK, 5, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_DATTACK, 5, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT, get_move_hitbox_property(AT_DATTACK, 5, HG_VISUAL_EFFECT, stance));
set_hitbox_value(AT_DATTACK, 5, HG_HIT_SFX, get_move_hitbox_property(AT_DATTACK, 5, HG_HIT_SFX, stance));
set_hitbox_value(AT_DATTACK, 5, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 5, HG_SDI_MULTIPLIER, 1);

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

//  Getters
#define get_move_property {
    // get_move_property(move, index, stance)
    // Gets a move property's value for a given stance within the move data strucure.
    //
    var move = argument0;
    var index = argument1;
    var _stance = argument2;

    return move_data[move].properties[@ index][@ _stance];
}

#define get_move_window_property {
    // get_move_window_property(move, window, index, stance)
    // Gets a window property's value for a given stance within the move data strucure.
    //
    var move = argument0;
    var _window = argument1;
    var index = argument2;
    var _stance = argument3;

    return move_data[move].windows[@ _window][@ index][@ _stance];
}

#define get_move_hitbox_property {
    // get_move_window_property(move, hitbox, index, stance)
    // Gets a hitbox property's value for a given stance within the move data strucure.
    //
    var move = argument0;
    var hbox = argument1;
    var index = argument2;
    var _stance = argument3;

    return move_data[move].hitboxes[@ hbox][@ index][@ _stance];
    // print_debug(string(move_data[move].hitboxes[hbox][index]));
}