///Shocking Platforms Initialize

sprite_index = sprite_get("platform");

width = 128;


position = 0;   //Which position the platform is currently in. Counts up from 0 going counter-clockwise starting at the top left.
movement_state = 0; //Which synchronous movement state (numbered 0 - 9) the platform is currently in. The behavior in this state depends on their position.
ms_total = 10;  //Total number of movement states.
state_time[1] = 64;     //How long a platform remains in a state where any platform is moving. Must be multiple of 32.
state_time[0] = 728;    //How long a platform remains in a state where no platforms are moving.
state_switch_timestamp = 0; //How many frames since the last state switch.

anim_speed = 1/3;   //The rate at which the platform animates when applicable.
anim_start_move = state_time[0] - (4 * image_number / anim_speed + 10 / image_number);   //The time left during a still state in which the platform starts animating.
anim_start_stop = state_time[1] - 5 / anim_speed;   //The time left during a moving state in which the platform starts animating.

//Creating a grid of target locations for each position formatted as [postition, coordinate], where the coordinate value goes as such - 0, x1; 1, y1; 2, x2; 3, y2.

#macro LEFT get_marker_x(1)
#macro MID_LEFT LEFT + 128
#macro RIGHT get_marker_x(2)
#macro MID_RIGHT RIGHT - 128
#macro TOP get_marker_y(1)
#macro BOTTOM get_marker_y(2)

//Cantor pairing for each default position location for debug purposes.
cantor_0 = ((LEFT + TOP + 1)*(LEFT + TOP))/2 + TOP;
cantor_1 = ((LEFT + BOTTOM + 1)*(LEFT + BOTTOM))/2 + BOTTOM;
cantor_2 = ((RIGHT + BOTTOM + 1)*(RIGHT + BOTTOM))/2 + BOTTOM;
cantor_3 = ((RIGHT + TOP + 1)*(RIGHT + TOP))/2 + TOP;

//Initialize the final cell first so that the array isn't re-instantiated every time a cell is added.
target_grid[3,3] = 0;   

target_grid[0,0] = LEFT; //Position 0, x1
target_grid[0,1] = TOP; //Position 0, y1
target_grid[0,2] = MID_LEFT; //Position 0, x2
target_grid[0,3] = TOP; //Position 0, y2

target_grid[1,0] = LEFT; //Position 1, x1
target_grid[1,1] = BOTTOM; //Position 1, y1
target_grid[1,2] = MID_LEFT; //Position 1, x2
target_grid[1,3] = BOTTOM; //Position 1, y2

target_grid[2,0] = RIGHT; //Position 2, x1
target_grid[2,1] = BOTTOM; //Position 2, y1
target_grid[2,2] = MID_RIGHT; //Position 2, x2
target_grid[2,3] = BOTTOM; //Position 2, y2

target_grid[3,0] = RIGHT; //Position 3, x1
target_grid[3,1] = TOP; //Position 3, y1
target_grid[3,2] = MID_RIGHT; //Position 3, x2
target_grid[3,3] = TOP; //Position 3, y2