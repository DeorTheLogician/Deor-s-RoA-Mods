//draw_hud - the x position of your HUD element is 48*(i-1)

draw_debug_text(5, 435, "window: " + string(window));
draw_debug_text(5, 450, "window_timer: " + string(window_timer));
// draw_debug_text(5, 375, "image_index: " + string(image_index));
// draw_debug_text(5, 390, "a: " + string(a));
// draw_debug_text(5, 405, "2: " + string(arr2[1][1]));
// draw_debug_text(5, 420, "3: " + string(arr3[1][1]));

// for(var k = 0; k <= get_num_hitboxes(AT_DATTACK); k++) {
    // for(var j = 0; j <= 54; j++) {
        // if(k == 0) {
        //     draw_debug_text(5, 30+15*(j+k), "Window " + string(k) + ":");
        // }
    //     var property = move_data[AT_DATTACK].hitboxes[5][j];
    //     if(array_length(property) == 4) {
    //         draw_debug_text(200, 30+15*j, string(1) + "," + string(j) + ": " + string(move_data[AT_DATTACK].hitboxes[5][j]));
    //     }
    // }
// }

if("stance" in self) {
    clock_rad = 10;
    clock_offset_x = -clock_rad - 2;
    clock_offset_y = 0;
    clock_hand_angle = (90 - 90 * stance) % 360;
    clock_second_hand_angle = (90 - (360/ticker_max) * stance_ticker) % 360;
    clock_hand_width = 3;
    clock_second_hand_width = 2;
    clock_hand_length_mul = 0.75;

    draw_circle_color(temp_x + clock_offset_x, temp_y + clock_offset_y, clock_rad, stance_colors[stance], stance_colors[stance], false);
    draw_line_width_color(temp_x + clock_offset_x, temp_y + clock_offset_y, temp_x + clock_offset_x + lengthdir_x(clock_rad * clock_hand_length_mul, clock_hand_angle), temp_y + clock_offset_y + lengthdir_y(clock_rad * clock_hand_length_mul, clock_hand_angle), clock_hand_width, c_black, c_black);
    draw_line_width_color(temp_x + clock_offset_x, temp_y + clock_offset_y, temp_x + clock_offset_x + lengthdir_x(clock_rad, clock_second_hand_angle), temp_y + clock_offset_y + lengthdir_y(clock_rad, clock_second_hand_angle), clock_second_hand_width, c_black, c_black);

    draw_debug_text(temp_x + clock_offset_x - 1, temp_y + clock_offset_y - clock_rad - 12 , "0");
    draw_debug_text(temp_x + clock_offset_x + clock_rad + 4, temp_y + clock_offset_y - 4, "1");
    draw_debug_text(temp_x + clock_offset_x - 1, temp_y + clock_offset_y + clock_rad + 4, "2");
    draw_debug_text(temp_x + clock_offset_x - clock_rad - 8, temp_y + clock_offset_y - 4, "3");
}