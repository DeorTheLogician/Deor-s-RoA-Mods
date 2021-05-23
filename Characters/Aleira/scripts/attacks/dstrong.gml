//Database Initialization
//  Properties

//  Windows
set_move_num_windows(AT_DSTRONG, 5);
set_move_window_property(AT_DSTRONG, 1, AG_WINDOW_LENGTH,           [12, 16, 12, 16]);

set_move_window_property(AT_DSTRONG, 3, AG_WINDOW_LENGTH,           [15, 10, 15,  8]);
set_move_window_property(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES,      [ 4,  4,  4,  2]);
set_move_window_property(AT_DSTRONG, 3, AG_WINDOW_SFX, [asset_get("sfx_spin"), asset_get("sfx_spin"), asset_get("sfx_spin"), asset_get("sfx_swipe_medium1")]);

set_move_window_property(AT_DSTRONG, 4, AG_WINDOW_LENGTH,           [ 8,  4,  8,  8]);

set_move_window_property(AT_DSTRONG, 5, AG_WINDOW_LENGTH,           [16, 12, 16, 18]);

//  Hitboxes
set_move_num_hitboxes(AT_DSTRONG, 8);

set_move_hitbox_property(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME,   [ 4,  3,  4,  4]);
set_move_hitbox_property(AT_DSTRONG, 1, HG_EFFECT,                  [ 1,  0,  3,  0]);
set_move_hitbox_property(AT_DSTRONG, 1, HG_DAMAGE,                  [ 2,  2,  2,  4]);
set_move_hitbox_property(AT_DSTRONG, 1, HG_ANGLE,                  [150,150,150,130]);
set_move_hitbox_property(AT_DSTRONG, 1, HG_BASE_KNOCKBACK,          [ 3,  3,  3, 10]);
set_move_hitbox_property(AT_DSTRONG, 1, HG_VISUAL_EFFECT,           [ 4,194, 10,193]);
set_move_hitbox_property(AT_DSTRONG, 1, HG_HIT_SFX, [asset_get("sfx_burnapplied"), asset_get("sfx_blow_weak1"), asset_get("sfx_waterhit_weak"), asset_get("sfx_blow_medium2")]);

set_move_hitbox_property(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME,   [ 4,  3,  4,  4]);
set_move_hitbox_property(AT_DSTRONG, 2, HG_EFFECT,                  [ 1,  0,  3,  0]);
set_move_hitbox_property(AT_DSTRONG, 2, HG_DAMAGE,                  [ 2,  2,  2,  4]);
set_move_hitbox_property(AT_DSTRONG, 2, HG_BASE_KNOCKBACK,          [10, 10, 10, 11]);
set_move_hitbox_property(AT_DSTRONG, 2, HG_VISUAL_EFFECT,           [ 4,194, 10,193]);
set_move_hitbox_property(AT_DSTRONG, 2, HG_HIT_SFX, [asset_get("sfx_burnapplied"), asset_get("sfx_blow_weak1"), asset_get("sfx_waterhit_weak"), asset_get("sfx_blow_medium2")]);

set_move_hitbox_property(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME,   [ 8,  5,  8,  8]);
set_move_hitbox_property(AT_DSTRONG, 3, HG_EFFECT,                  [ 1,  0,  3,  0]);
set_move_hitbox_property(AT_DSTRONG, 3, HG_VISUAL_EFFECT,           [ 4,194, 10,193]);
set_move_hitbox_property(AT_DSTRONG, 3, HG_HIT_SFX, [asset_get("sfx_burnapplied"), asset_get("sfx_blow_weak1"), asset_get("sfx_waterhit_weak"), asset_get("sfx_blow_heavy2")]);

set_move_hitbox_property(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME,   [ 8,  5,  8,  8]);
set_move_hitbox_property(AT_DSTRONG, 4, HG_EFFECT,                  [ 1,  0,  3,  0]);
set_move_hitbox_property(AT_DSTRONG, 4, HG_VISUAL_EFFECT,           [ 4,194, 10,193]);
set_move_hitbox_property(AT_DSTRONG, 4, HG_HIT_SFX, [asset_get("sfx_burnapplied"), asset_get("sfx_blow_weak1"), asset_get("sfx_waterhit_weak"), asset_get("sfx_blow_medium2")]);

set_move_hitbox_property(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME,   [12,  7, 12, 12]);
set_move_hitbox_property(AT_DSTRONG, 5, HG_EFFECT,                  [ 1,  0,  3,  0]);
set_move_hitbox_property(AT_DSTRONG, 5, HG_VISUAL_EFFECT,           [ 4,194, 10,193]);
set_move_hitbox_property(AT_DSTRONG, 5, HG_HIT_SFX, [asset_get("sfx_burnapplied"), asset_get("sfx_blow_weak1"), asset_get("sfx_waterhit_weak"), asset_get("sfx_blow_heavy2")]);

set_move_hitbox_property(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME,   [12,  7, 12, 12]);
set_move_hitbox_property(AT_DSTRONG, 6, HG_EFFECT,                  [ 1,  0,  3,  0]);
set_move_hitbox_property(AT_DSTRONG, 6, HG_VISUAL_EFFECT,           [ 4,194, 10,193]);
set_move_hitbox_property(AT_DSTRONG, 6, HG_HIT_SFX, [asset_get("sfx_burnapplied"), asset_get("sfx_blow_weak1"), asset_get("sfx_waterhit_weak"), asset_get("sfx_blow_medium2")]);

set_move_hitbox_property(AT_DSTRONG, 7, HG_LIFETIME,            [ 6,  4,  6,  6]);
set_move_hitbox_property(AT_DSTRONG, 7, HG_DAMAGE,              [10,  7, 10, 12]);
set_move_hitbox_property(AT_DSTRONG, 7, HG_ANGLE,               [70, 70,120,120]);
set_move_hitbox_property(AT_DSTRONG, 7, HG_BASE_KNOCKBACK,      [ 5,  4,  4,  5]);
set_move_hitbox_property(AT_DSTRONG, 7, HG_KNOCKBACK_SCALING,   [.9, .5, .9,  1]);
set_move_hitbox_property(AT_DSTRONG, 7, HG_FINAL_BASE_KNOCKBACK,[ 3,  4,  4,  3]);
set_move_hitbox_property(AT_DSTRONG, 7, HG_VISUAL_EFFECT,       [148,156,195,192]);
set_move_hitbox_property(AT_DSTRONG, 7, HG_HIT_SFX, [asset_get("sfx_blow_medium2"), asset_get("sfx_blow_medium1"), asset_get("sfx_waterhit_heavy2"), asset_get("sfx_blow_heavy2")]);

set_move_hitbox_property(AT_DSTRONG, 8, HG_DAMAGE,              [10,  7, 10, 12]);
set_move_hitbox_property(AT_DSTRONG, 8, HG_ANGLE,               [90, 90,110,110]);
set_move_hitbox_property(AT_DSTRONG, 8, HG_EFFECT,              [ 0,  0,  2,  0]);
set_move_hitbox_property(AT_DSTRONG, 8, HG_BASE_KNOCKBACK,      [ 6,  5,  5,  6]);
set_move_hitbox_property(AT_DSTRONG, 8, HG_KNOCKBACK_SCALING,  [1.1, .9,1.1,1.1]);
set_move_hitbox_property(AT_DSTRONG, 8, HG_VISUAL_EFFECT,       [148,196,161,155]);
set_move_hitbox_property(AT_DSTRONG, 8, HG_HIT_SFX, [asset_get("sfx_blow_medium2"), asset_get("sfx_blow_medium1"), asset_get("sfx_waterhit_heavy2"), asset_get("sfx_blow_heavy1")]);


//Value Setting
set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, get_move_window_property(AT_DSTRONG, 1, AG_WINDOW_LENGTH, stance));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, get_move_window_property(AT_DSTRONG, 3, AG_WINDOW_LENGTH, stance));
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, get_move_window_property(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, stance));
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, get_move_window_property(AT_DSTRONG, 3, AG_WINDOW_SFX, stance));
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, get_move_window_property(AT_DSTRONG, 4, AG_WINDOW_LENGTH, stance));
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, get_move_window_property(AT_DSTRONG, 5, AG_WINDOW_LENGTH, stance));
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 8);

//Hitbox 1 - Generated via Lucid Dream
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, get_move_hitbox_property(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, stance));
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -29);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, get_move_hitbox_property(AT_DSTRONG, 1, HG_DAMAGE, stance));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, get_move_hitbox_property(AT_DSTRONG, 1, HG_ANGLE, stance));
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_EFFECT, get_move_hitbox_property(AT_DSTRONG, 1, HG_EFFECT, stance));
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, get_move_hitbox_property(AT_DSTRONG, 1, HG_VISUAL_EFFECT, stance));
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, get_move_hitbox_property(AT_DSTRONG, 1, HG_HIT_SFX, stance));
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 0);

//Hitbox 2 - Generated via Lucid Dream
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, get_move_hitbox_property(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, stance));
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -6);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -70);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 90);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, get_move_hitbox_property(AT_DSTRONG, 2, HG_DAMAGE, stance));
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_EFFECT, get_move_hitbox_property(AT_DSTRONG, 2, HG_EFFECT, stance));
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, get_move_hitbox_property(AT_DSTRONG, 2, HG_VISUAL_EFFECT, stance));
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, get_move_hitbox_property(AT_DSTRONG, 2, HG_HIT_SFX, stance));
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 0);

//Hitbox 3 - Generated via Lucid Dream
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, get_move_hitbox_property(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, stance));
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, -28);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -55);
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 30);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_EFFECT, get_move_hitbox_property(AT_DSTRONG, 3, HG_EFFECT, stance));
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, get_move_hitbox_property(AT_DSTRONG, 3, HG_VISUAL_EFFECT, stance));
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, get_move_hitbox_property(AT_DSTRONG, 3, HG_HIT_SFX, stance));
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 1);

//Hitbox 4 - Generated via Lucid Dream
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, get_move_hitbox_property(AT_DSTRONG, 4, HG_WINDOW_CREATION_FRAME, stance));
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 44);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -55);
set_hitbox_value(AT_DSTRONG, 4, HG_WIDTH, 70);
set_hitbox_value(AT_DSTRONG, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_DSTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 4, HG_ANGLE, 150);
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 4, HG_EFFECT, get_move_hitbox_property(AT_DSTRONG, 4, HG_EFFECT, stance));
set_hitbox_value(AT_DSTRONG, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, get_move_hitbox_property(AT_DSTRONG, 4, HG_VISUAL_EFFECT, stance));
set_hitbox_value(AT_DSTRONG, 4, HG_HIT_SFX, get_move_hitbox_property(AT_DSTRONG, 4, HG_HIT_SFX, stance));
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 1);

//Hitbox 5 - Generated via Lucid Dream
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, get_move_hitbox_property(AT_DSTRONG, 5, HG_WINDOW_CREATION_FRAME, stance));
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 44);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -27);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 150);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 5, HG_EFFECT, get_move_hitbox_property(AT_DSTRONG, 5, HG_EFFECT, stance));
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, 0.10);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, get_move_hitbox_property(AT_DSTRONG, 5, HG_VISUAL_EFFECT, stance));
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, get_move_hitbox_property(AT_DSTRONG, 5, HG_HIT_SFX, stance));
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, 2);

//Hitbox 6 - Generated via Lucid Dream
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME, get_move_hitbox_property(AT_DSTRONG, 6, HG_WINDOW_CREATION_FRAME, stance));
set_hitbox_value(AT_DSTRONG, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_X, 6);
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_Y, -85);
set_hitbox_value(AT_DSTRONG, 6, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 6, HG_ANGLE, 350);
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSTRONG, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 6, HG_EFFECT, get_move_hitbox_property(AT_DSTRONG, 6, HG_EFFECT, stance));
set_hitbox_value(AT_DSTRONG, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, 6, HG_HITPAUSE_SCALING, 0.10);
set_hitbox_value(AT_DSTRONG, 6, HG_VISUAL_EFFECT, get_move_hitbox_property(AT_DSTRONG, 6, HG_VISUAL_EFFECT, stance));
set_hitbox_value(AT_DSTRONG, 6, HG_HIT_SFX, get_move_hitbox_property(AT_DSTRONG, 6, HG_HIT_SFX, stance));
set_hitbox_value(AT_DSTRONG, 6, HG_HITBOX_GROUP, 2);

//Hitbox 7 - Generated via Lucid Dream
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 7, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 7, HG_LIFETIME, get_move_hitbox_property(AT_DSTRONG, 7, HG_LIFETIME, stance));
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_Y, -51);
set_hitbox_value(AT_DSTRONG, 7, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG, 7, HG_HEIGHT, 106);
set_hitbox_value(AT_DSTRONG, 7, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 7, HG_DAMAGE, get_move_hitbox_property(AT_DSTRONG, 7, HG_DAMAGE, stance));
set_hitbox_value(AT_DSTRONG, 7, HG_ANGLE, get_move_hitbox_property(AT_DSTRONG, 7, HG_ANGLE, stance));
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_DSTRONG, 7, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_DSTRONG, 7, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_DSTRONG, 7, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_DSTRONG, 7, HG_FINAL_BASE_KNOCKBACK, get_move_hitbox_property(AT_DSTRONG, 7, HG_FINAL_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_DSTRONG, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 7, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSTRONG, 7, HG_VISUAL_EFFECT, get_move_hitbox_property(AT_DSTRONG, 7, HG_VISUAL_EFFECT, stance));
set_hitbox_value(AT_DSTRONG, 7, HG_HIT_SFX, get_move_hitbox_property(AT_DSTRONG, 7, HG_HIT_SFX, stance));
set_hitbox_value(AT_DSTRONG, 7, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_X, -8);
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_Y, -116);
set_hitbox_value(AT_DSTRONG, 8, HG_WIDTH, 52);
set_hitbox_value(AT_DSTRONG, 8, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 8, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 8, HG_DAMAGE, get_move_hitbox_property(AT_DSTRONG, 8, HG_DAMAGE, stance));
set_hitbox_value(AT_DSTRONG, 8, HG_ANGLE, get_move_hitbox_property(AT_DSTRONG, 8, HG_ANGLE, stance));
set_hitbox_value(AT_DSTRONG, 8, HG_BASE_KNOCKBACK, get_move_hitbox_property(AT_DSTRONG, 8, HG_BASE_KNOCKBACK, stance));
set_hitbox_value(AT_DSTRONG, 8, HG_KNOCKBACK_SCALING, get_move_hitbox_property(AT_DSTRONG, 8, HG_KNOCKBACK_SCALING, stance));
set_hitbox_value(AT_DSTRONG, 8, HG_EFFECT, get_move_hitbox_property(AT_DSTRONG, 8, HG_EFFECT, stance));
set_hitbox_value(AT_DSTRONG, 8, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 8, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 8, HG_VISUAL_EFFECT, get_move_hitbox_property(AT_DSTRONG, 8, HG_VISUAL_EFFECT, stance));
set_hitbox_value(AT_DSTRONG, 8, HG_HIT_SFX, get_move_hitbox_property(AT_DSTRONG, 8, HG_HIT_SFX, stance));
set_hitbox_value(AT_DSTRONG, 8, HG_HITBOX_GROUP, 3);

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