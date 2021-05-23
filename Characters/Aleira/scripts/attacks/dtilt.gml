//Database Initialization
//  Properties

//  Windows
set_move_num_windows(AT_DTILT, 3);
set_move_window_property(AT_DTILT, 1, AG_WINDOW_LENGTH, [ 5,  4,  7, 8]);

set_move_window_property(AT_DTILT, 2, AG_WINDOW_LENGTH, [ 6,  4,  9,  4]);
set_move_window_property(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, [ 2,  2,  3,  2]);
set_move_window_property(AT_DTILT, 2, AG_WINDOW_HSPEED, [ 8,  4,  8, 10]);
set_move_window_property(AT_DTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, [.5, .5,.05, .7]);

set_move_window_property(AT_DTILT, 3, AG_WINDOW_LENGTH, [12, 12,  8, 13]);
set_move_window_property(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, [ 3,  3,  3,  3]);
set_move_window_property(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, [ 4,  4,  4,  4]);

//  Hitboxes
set_move_num_hitboxes(AT_DTILT, 2);
set_move_hitbox_property(AT_DTILT, 1, HG_LIFETIME, [ 6,  4,  9,  4]);
set_move_hitbox_property(AT_DTILT, 1, HG_DAMAGE, [ 7,  6,  8, 9]);
set_move_hitbox_property(AT_DTILT, 1, HG_ANGLE, [70, 70, 60, 70]);
set_move_hitbox_property(AT_DTILT, 1, HG_BASE_KNOCKBACK, [ 5,  5,  7,  7]);
set_move_hitbox_property(AT_DTILT, 1, HG_KNOCKBACK_SCALING, [.2, .2, .3, .4]);
set_move_hitbox_property(AT_DTILT, 1, HG_FINAL_BASE_KNOCKBACK, [ 5,  5,  5,  5]);
// set_move_hitbox_property(AT_DTILT, 1, HG_VISUAL_EFFECT, [303,303, 10,192]);

set_move_hitbox_property(AT_DTILT, 2, HG_LIFETIME, [ 6,  4,  9,  4]);
set_move_hitbox_property(AT_DTILT, 2, HG_DAMAGE, [ 7,  6,  8,  9]);
set_move_hitbox_property(AT_DTILT, 2, HG_ANGLE, [55, 55, 40, 55]);
set_move_hitbox_property(AT_DTILT, 2, HG_BASE_KNOCKBACK, [ 5,  5,  7,  7]);
set_move_hitbox_property(AT_DTILT, 2, HG_KNOCKBACK_SCALING, [.2, .2, .3, .4]);
set_move_hitbox_property(AT_DTILT, 2, HG_FINAL_BASE_KNOCKBACK, [ 5,  5,  5,  5]);
// set_move_hitbox_property(AT_DTILT, 1, HG_VISUAL_EFFECT, [303,303, 10,192]);


//Value Setting
set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, get_move_window_property(AT_DTILT, 1, AG_WINDOW_LENGTH, stance));
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, get_move_window_property(AT_DTILT, 2, AG_WINDOW_LENGTH, stance));
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, get_move_window_property(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, stance));
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, get_move_window_property(AT_DTILT, 2, AG_WINDOW_HSPEED, stance));
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, get_move_window_property(AT_DTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, stance));
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, get_move_window_property(AT_DTILT, 3, AG_WINDOW_LENGTH, stance));
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, get_move_window_property(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, stance));
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, get_move_window_property(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, stance));
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT,2);

set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, get_move_hitbox_property(AT_DTILT, 1, HG_LIFETIME, stance));
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, -28);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 58);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, get_move_hitbox_property(AT_DTILT, 1, HG_DAMAGE, stance));
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, get_move_hitbox_property(AT_DTILT, 1, HG_ANGLE, stance));
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_DTILT, 1, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_DTILT, 1, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_DTILT, 1, HG_FINAL_BASE_KNOCKBACK, get_move_hitbox_property(AT_DTILT, 1, HG_FINAL_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DTILT, 1, HG_GROUNDEDNESS, 1);

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, get_move_hitbox_property(AT_DTILT, 2, HG_LIFETIME, stance));
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, -28);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 58);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, get_move_hitbox_property(AT_DTILT, 2, HG_DAMAGE, stance));
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, get_move_hitbox_property(AT_DTILT, 2, HG_ANGLE, stance));
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_DTILT, 2, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_DTILT, 2, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_DTILT, 2, HG_FINAL_BASE_KNOCKBACK, get_move_hitbox_property(AT_DTILT, 2, HG_FINAL_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DTILT, 2, HG_GROUNDEDNESS, 2);

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
    // print_debug(string(hbox) + "," + string(index) + ": " +string(move_data[move].hitboxes[hbox][index]));
}