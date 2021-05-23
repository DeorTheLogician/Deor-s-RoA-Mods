//Database Initialization
//  Properties

//  Windows
set_move_num_windows(AT_USTRONG, 4);
set_move_window_property(AT_USTRONG, 1, AG_WINDOW_LENGTH,           [10,  8, 10, 12]);

set_move_window_property(AT_USTRONG, 2, AG_WINDOW_LENGTH,           [ 4,  2,  4,  4]);

set_move_window_property(AT_USTRONG, 3, AG_WINDOW_LENGTH,           [15, 10, 15, 20]);
set_move_window_property(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES,      [ 5,  5,  5,  2]);
set_move_window_property(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, [ 4,  4,  4,  8]);
set_move_window_property(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME,        [11,  7, 11,  3]);

set_move_window_property(AT_USTRONG, 4, AG_WINDOW_LENGTH,           [ 8,  4,  8,  8]);
set_move_window_property(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES,      [ 8,  8,  8,  7]);
set_move_window_property(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, [ 9,  9,  9, 10]);

//  Hitboxes
set_move_num_hitboxes(AT_USTRONG, 6);
set_move_hitbox_property(AT_USTRONG, 1, HG_LIFETIME,                [ 3,  2,  3,  3]);
set_move_hitbox_property(AT_USTRONG, 1, HG_DAMAGE,                  [ 7,  5,  7, 10]);
set_move_hitbox_property(AT_USTRONG, 1, HG_ANGLE,                  [110,110,110, 70]);
set_move_hitbox_property(AT_USTRONG, 1, HG_HITBOX_X,                [44, 44, 44, 52]);
set_move_hitbox_property(AT_USTRONG, 1, HG_HITBOX_Y,               [-51,-51,-51,-57]);
set_move_hitbox_property(AT_USTRONG, 1, HG_WIDTH,                   [82, 82, 82, 73]);
set_move_hitbox_property(AT_USTRONG, 1, HG_HEIGHT,                  [97, 97, 97, 96]);
set_move_hitbox_property(AT_USTRONG, 1, HG_BASE_KNOCKBACK,          [ 5,  7,  5,  6]);
set_move_hitbox_property(AT_USTRONG, 1, HG_KNOCKBACK_SCALING,       [.7, .5, .7, .8]);

set_move_hitbox_property(AT_USTRONG, 2, HG_LIFETIME,                [ 3,  2,  3,  3]);
set_move_hitbox_property(AT_USTRONG, 2, HG_DAMAGE,                  [ 7,  6,  7, 15]);
set_move_hitbox_property(AT_USTRONG, 2, HG_HITBOX_X,                [ 8,  8,  8, 26]);
set_move_hitbox_property(AT_USTRONG, 2, HG_BASE_KNOCKBACK,          [ 9,  9,  7,  7]);
set_move_hitbox_property(AT_USTRONG, 2, HG_KNOCKBACK_SCALING,       [ 0,  0,1.1,1.1]);
set_move_hitbox_property(AT_USTRONG, 2, HG_EFFECT,                  [ 0,  0,  3,  0]);
set_move_hitbox_property(AT_USTRONG, 2, HG_EXTRA_HITPAUSE,          [12,  8,  0,  0]);
set_move_hitbox_property(AT_USTRONG, 2, HG_VISUAL_EFFECT,          [145, 12,150,193]);
set_move_hitbox_property(AT_USTRONG, 2, HG_HIT_SFX, [asset_get("sfx_ell_dspecial_explosion_3"), asset_get("sfx_birdclap"), asset_get("sfx_waterhit_medium"), asset_get("sfx_blow_heavy1")]);

set_move_hitbox_property(AT_USTRONG, 3, HG_LIFETIME,                [ 3,  2,  3,  3]);
set_move_hitbox_property(AT_USTRONG, 3, HG_DAMAGE,                  [ 7,  5,  7, 10]);
set_move_hitbox_property(AT_USTRONG, 3, HG_ANGLE,                   [70, 70, 70,110]);
set_move_hitbox_property(AT_USTRONG, 3, HG_HITBOX_X,               [-24,-24,-24, -2]);
set_move_hitbox_property(AT_USTRONG, 3, HG_HITBOX_Y,               [-53,-53,-53,-55]);
set_move_hitbox_property(AT_USTRONG, 3, HG_WIDTH,                   [52, 52, 52, 75]);
set_move_hitbox_property(AT_USTRONG, 3, HG_HEIGHT,                  [96, 95, 95, 97]);
set_move_hitbox_property(AT_USTRONG, 3, HG_BASE_KNOCKBACK,          [ 5,  7,  5,  6]);
set_move_hitbox_property(AT_USTRONG, 3, HG_KNOCKBACK_SCALING,       [.7, .5, .7, .8]);

set_move_hitbox_property(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME,   [12,  8, 12, 10]);
set_move_hitbox_property(AT_USTRONG, 4, HG_LIFETIME,                [ 3,  2,  3,  3]);
set_move_hitbox_property(AT_USTRONG, 4, HG_DAMAGE,                  [ 7,  5,  7,  7]);
set_move_hitbox_property(AT_USTRONG, 4, HG_ANGLE,                   [70, 70, 70,240]);
set_move_hitbox_property(AT_USTRONG, 4, HG_HITBOX_X,                [-2, -2, -2,-18]);
set_move_hitbox_property(AT_USTRONG, 4, HG_HITBOX_Y,               [-55,-55,-55,-57]);
set_move_hitbox_property(AT_USTRONG, 4, HG_WIDTH,                   [75, 75, 75, 87]);
set_move_hitbox_property(AT_USTRONG, 4, HG_HEIGHT,                  [97, 97, 97, 66]);
set_move_hitbox_property(AT_USTRONG, 4, HG_BASE_KNOCKBACK,          [ 5,  7,  5,  4]);
set_move_hitbox_property(AT_USTRONG, 4, HG_KNOCKBACK_SCALING,       [.7, .5, .7, .5]);

set_move_hitbox_property(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME,   [12,  8, 12, 99]);
set_move_hitbox_property(AT_USTRONG, 5, HG_LIFETIME,                [ 3,  2,  3,  3]);
set_move_hitbox_property(AT_USTRONG, 5, HG_DAMAGE,                  [10,  8, 10, 10]);
set_move_hitbox_property(AT_USTRONG, 5, HG_ANGLE,                   [90, 90, 90,270]);
set_move_hitbox_property(AT_USTRONG, 5, HG_HITBOX_X,                [26, 26, 26, 26]);
set_move_hitbox_property(AT_USTRONG, 5, HG_BASE_KNOCKBACK,          [ 8,  6,  9,  6]);
set_move_hitbox_property(AT_USTRONG, 5, HG_KNOCKBACK_SCALING,      [1.1, .9,1.1, .7]);
set_move_hitbox_property(AT_USTRONG, 5, HG_EFFECT,                  [ 0,  0,  2,  0]);
set_move_hitbox_property(AT_USTRONG, 5, HG_VISUAL_EFFECT,          [143,147,161,155]);
set_move_hitbox_property(AT_USTRONG, 5, HG_HIT_SFX, [asset_get("sfx_ell_uspecial_explode"), asset_get("sfx_bird_downspecial_end"), asset_get("sfx_waterhit_heavy2"), asset_get("sfx_blow_medium2")]);

set_move_hitbox_property(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME,   [12,  8, 12, 10]);
set_move_hitbox_property(AT_USTRONG, 6, HG_LIFETIME,                [ 3,  2,  3,  3]);
set_move_hitbox_property(AT_USTRONG, 6, HG_DAMAGE,                  [ 7,  5,  7,  7]);
set_move_hitbox_property(AT_USTRONG, 6, HG_ANGLE,                  [110,110,110,300]);
set_move_hitbox_property(AT_USTRONG, 6, HG_HITBOX_X,                [52, 52, 52, 52]);
set_move_hitbox_property(AT_USTRONG, 6, HG_HITBOX_Y,               [-57,-57,-57,-57]);
set_move_hitbox_property(AT_USTRONG, 6, HG_WIDTH,                   [73, 73, 73, 87]);
set_move_hitbox_property(AT_USTRONG, 6, HG_HEIGHT,                  [96, 96, 96, 66]);
set_move_hitbox_property(AT_USTRONG, 6, HG_BASE_KNOCKBACK,          [ 5,  7,  5,  4]);
set_move_hitbox_property(AT_USTRONG, 6, HG_KNOCKBACK_SCALING,       [.7, .5, .7, .5]);


//Value Setting
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG,6);

//Hitbox 1 - Generated via Lucid Dream
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -51);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 82);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 97);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 110);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.10);
set_hitbox_value(AT_USTRONG, 1, HG_EFFECT, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.90);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 1002);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -45);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, 510);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 0);

//Hitbox 2 - Generated via Lucid Dream - Sweet Spot 1
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -101);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 48);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_EFFECT, 0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 1008);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -45);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, 181);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 0);

//Hitbox 3 - Generated via Lucid Dream
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -24);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -53);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 52);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 96);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 70);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1.10);
set_hitbox_value(AT_USTRONG, 3, HG_EFFECT, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0.90);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 1002);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -45);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, 510);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 0);

//Hitbox 4 - Generated via Lucid Dream
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 75);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 97);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 70);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1.10);
set_hitbox_value(AT_USTRONG, 4, HG_EFFECT, 0);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0.90);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 1002);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -45);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, 510);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 1);

//Hitbox 5 - Generated via Lucid Dream - Sweet Spot 2
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 26);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -101);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 48);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 32);
set_hitbox_value(AT_USTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 1.10);
set_hitbox_value(AT_USTRONG, 5, HG_EFFECT, 0);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, 1008);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, -45);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, 181);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 1);

//Hitbox 6 - Generated via Lucid Dream
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 52);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -57);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 73);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 96);
set_hitbox_value(AT_USTRONG, 6, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 110);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 6, HG_KNOCKBACK_SCALING, 1.10);
set_hitbox_value(AT_USTRONG, 6, HG_EFFECT, 0);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, 0.90);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT, 1002);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT_Y_OFFSET, -45);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, 510);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, 1);

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