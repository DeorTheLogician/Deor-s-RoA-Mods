//draw_hud - the x position of your HUD element is 48*(i-1)

draw_debug_text(5, 435, "stance_locked: " + string(stance_locked));
// draw_debug_text(5, 450, "window_timer: " + string(window_timer));
// draw_debug_text(5, 375, "0: " + string(move_data[AT_NAIR].windows[0]));
// draw_debug_text(5, 390, "1: " + string(arr1[1][1]));
// draw_debug_text(5, 405, "2: " + string(arr2[1][1]));
// draw_debug_text(5, 420, "3: " + string(arr3[1][1]));

// for(var k = 0; k <= get_attack_value(AT_NAIR, AG_NUM_WINDOWS); k++) {
//     for(var j = 0; j <= 60; j++) {
//         // if(k == 0) {
//         //     draw_debug_text(5, 30+15*(j+k), "Window " + string(k) + ":");
//         // }
//         var property = move_data[AT_NAIR].windows[k][j];
//         if(array_length(property) == 4) {
//             draw_debug_text(200*k, 30+15*j, string(k) + "," + string(j) + ": " + string(move_data[AT_NAIR].windows[k][j]));
//         }
//     }
// }

clock_rad = 10;
clock_offset_x = -clock_rad - 2;
clock_offset_y = 0;
clock_hand_angle = (90 - 90 * stance) % 360;
clock_hand_width = 3;

draw_circle_color(temp_x + clock_offset_x, temp_y + clock_offset_y, clock_rad, stance_colors[stance], stance_colors[stance], false);
draw_line_width_color(temp_x + clock_offset_x, temp_y + clock_offset_y, temp_x + clock_offset_x + lengthdir_x(clock_rad, clock_hand_angle), temp_y + clock_offset_y + lengthdir_y(clock_rad, clock_hand_angle), clock_hand_width, c_black, c_black);

draw_debug_text(temp_x + clock_offset_x - 1, temp_y + clock_offset_y - clock_rad - 12 , "0");
draw_debug_text(temp_x + clock_offset_x + clock_rad + 4, temp_y + clock_offset_y - 4, "1");
draw_debug_text(temp_x + clock_offset_x - 1, temp_y + clock_offset_y + clock_rad + 4, "2");
draw_debug_text(temp_x + clock_offset_x - clock_rad - 8, temp_y + clock_offset_y - 4, "3");