//Database Initialization
//  Hitboxes
set_move_num_hitboxes(AT_NSPECIAL_2, 1);
set_move_hitbox_property(AT_NSPECIAL_2, 1, HG_DAMAGE, [ 11,  5,  16, 14]);
set_move_hitbox_property(AT_NSPECIAL_2, 1, HG_ANGLE, [75, 45,280,125]);
set_move_hitbox_property(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, [ 7,  4,  4,  6]);
set_move_hitbox_property(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, [.5, .25, .5,1.2]);
set_move_hitbox_property(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, [ 7,  8,  5,  7]);
set_move_hitbox_property(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, [  .3, .3, .8, .3]);
set_move_hitbox_property(AT_NSPECIAL_2, 1, HG_HIT_SFX, [asset_get("sfx_blow_medium1"), asset_get("sfx_blow_weak1"), asset_get("sfx_blow_medium2"), asset_get("sfx_blow_heavy2")]);
set_move_hitbox_property(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, [  1,1.25, .75,  1]);

//Value Setting
set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NSPECIAL_2, 1);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, get_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, get_move_hitbox_property(AT_NSPECIAL_2, 1, HG_DAMAGE, stance));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, get_move_hitbox_property(AT_NSPECIAL_2, 1, HG_ANGLE, stance));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, get_move_hitbox_property(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, stance));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, get_move_hitbox_property(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, stance));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, get_move_hitbox_property(AT_NSPECIAL_2, 1, HG_HIT_SFX, stance));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, get_move_hitbox_property(AT_NSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, stance));

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
}