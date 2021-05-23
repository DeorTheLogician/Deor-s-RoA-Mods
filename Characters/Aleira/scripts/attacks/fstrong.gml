//Database Initialization
//  Properties

//  Windows
set_move_num_windows(AT_FSTRONG, 4);
set_move_window_property(AT_FSTRONG, 1, AG_WINDOW_LENGTH, [ 8,  8,  8, 16]);

set_move_window_property(AT_FSTRONG, 2, AG_WINDOW_LENGTH, [16,  8, 12,  8]);

set_move_window_property(AT_FSTRONG, 3, AG_WINDOW_LENGTH,       [ 2,  2,  8,  2]);
set_move_window_property(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES,  [ 1,  1,  2,  1]);

set_move_window_property(AT_FSTRONG, 4, AG_WINDOW_LENGTH, [16, 12, 16, 20]);

//  Hitboxes
set_move_num_hitboxes(AT_FSTRONG, 2);
set_move_hitbox_property(AT_FSTRONG, 1, HG_LIFETIME,                [ 2,  2,  8,  2]);
set_move_hitbox_property(AT_FSTRONG, 1, HG_DAMAGE,                  [10,  8, 10, 12]);
set_move_hitbox_property(AT_FSTRONG, 1, HG_ANGLE,                  [361, 80,361,361]);
set_move_hitbox_property(AT_FSTRONG, 1, HG_BASE_KNOCKBACK,          [ 7,  8,  6,  7]);
set_move_hitbox_property(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING,       [.9, .2, .9,  1]);
set_move_hitbox_property(AT_FSTRONG, 1, HG_FINAL_BASE_KNOCKBACK,    [ 7,  8,  3,  7]);
set_move_hitbox_property(AT_FSTRONG, 1, HG_HIT_SFX, [asset_get("sfx_blow_medium2"), asset_get("sfx_blow_medium2"), asset_get("sfx_blow_medium2"), asset_get("sfx_blow_heavy1")]);

set_move_hitbox_property(AT_FSTRONG, 2, HG_DAMAGE,              [12, 10, 12, 14]);
set_move_hitbox_property(AT_FSTRONG, 2, HG_ANGLE,               [50,361, 50, 40]);
set_move_hitbox_property(AT_FSTRONG, 2, HG_BASE_KNOCKBACK,      [ 9,  8,  9,  8]);
set_move_hitbox_property(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING,   [ 1, .9,  1,1.1]);
set_move_hitbox_property(AT_FSTRONG, 2, HG_VISUAL_EFFECT,      [143,147,161,155]);
set_move_hitbox_property(AT_FSTRONG, 2, HG_HIT_SFX, [asset_get("sfx_ell_uspecial_explode"), asset_get("sfx_bird_downspecial_end"), asset_get("sfx_waterhit_heavy2"), asset_get("sfx_kragg_rock_shatter")]);


//Value Setting
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, get_move_window_property(AT_FSTRONG, 1, AG_WINDOW_LENGTH, stance));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, get_move_window_property(AT_FSTRONG, 2, AG_WINDOW_LENGTH, stance));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_abyss_portal_spawn"));    //or: sfx_abyss_portal_spawn
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, get_move_window_property(AT_FSTRONG, 3, AG_WINDOW_LENGTH, stance));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, get_move_window_property(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, stance));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, get_move_window_property(AT_FSTRONG, 4, AG_WINDOW_LENGTH, stance));
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG,2);

//Hitbox 1 - Generated via Lucid Dream
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, get_move_hitbox_property(AT_FSTRONG, 1, HG_LIFETIME, stance));
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -53);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 82);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 39);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, get_move_hitbox_property(AT_FSTRONG, 1, HG_DAMAGE, stance));
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, get_move_hitbox_property(AT_FSTRONG, 1, HG_ANGLE, stance));
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_FSTRONG, 1, HG_FINAL_BASE_KNOCKBACK, get_move_hitbox_property(AT_FSTRONG, 1, HG_FINAL_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_FSTRONG, 1, HG_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.80);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, get_move_hitbox_property(AT_FSTRONG, 1, HG_HIT_SFX, stance));

//Hitbox 2 - Generated via Lucid Dream
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 90);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 35);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 53);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, get_move_hitbox_property(AT_FSTRONG, 2, HG_DAMAGE, stance));
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, get_move_hitbox_property(AT_FSTRONG, 2, HG_ANGLE, stance));
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_FSTRONG, 2, HG_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, get_move_hitbox_property(AT_FSTRONG, 2, HG_VISUAL_EFFECT, stance));
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, get_move_hitbox_property(AT_FSTRONG, 2, HG_HIT_SFX, stance));

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
    // print_debug(string(hbox) + " " + string(index) + ": " + string(move_data[move].hitboxes[hbox][index][_stance]));
}