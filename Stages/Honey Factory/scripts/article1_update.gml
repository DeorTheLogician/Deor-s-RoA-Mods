///Shocking Platform Update

//Check if current location is the default location of one of the four positions. If it is, set the platform's position accordingly.
var cantor = ((x + y + 1)*(x + y))/2 + y;   //Use Cantor pairing to simultaneously check the X and Y coordinate.

if(cantor == cantor_0)
    position = 0;
else if(cantor == cantor_1)
    position = 1;
else if(cantor == cantor_2)
    position = 2;
else if(cantor == cantor_3)
    position = 3;

if(!(state_switch_timestamp mod state_time[movement_state mod 2]) && get_gameplay_time() >= state_time[0]) //Using truthiness to check if the the time limit for the current state is up. Odd states have a different timing than evens.
{
    movement_state = (movement_state + 1) mod ms_total; //Advance the state machine by 1.
    state_switch_timestamp = 0;

    switch(position)
    {
        case 0: //Behavior of top left platform.
            switch(movement_state)
            {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 6:
                case 8:
                    hsp = 0;
                    vsp = 0;
                    break;
                case 5:
                    hsp = (target_grid[0,2] - x) / state_time[movement_state mod 2];
                    vsp = 0;
                    break;
                case 7:
                    hsp = (target_grid[0,0] - x) / state_time[movement_state mod 2];
                    vsp = 0;
                    break;
                case 9:
                    hsp = 0;
                    vsp = (target_grid[1,1] - y) / state_time[movement_state mod 2];
                    break;
            }
            break;
        case 1: //Behavior of bottom left platform.
            switch(movement_state)
            {
                case 0:
                case 2:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    hsp = 0;
                    vsp = 0;
                    break;
                case 1:
                    hsp = (target_grid[1,2] - x) / state_time[movement_state mod 2];
                    vsp = 0;
                    break;
                case 3:
                    hsp = (target_grid[1,0] - x) / state_time[movement_state mod 2];
                    vsp = 0;
                    break;
                case 9:
                    hsp = (target_grid[2,0] - x) / state_time[movement_state mod 2];
                    vsp = 0;
                    break;
            }
            break;
        case 2: //Behavior of bottom right platform.
            switch(movement_state)
            {
                case 0:
                case 2:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    hsp = 0;
                    vsp = 0;
                    break;
                case 1:
                    hsp = (target_grid[2,2] - x) / state_time[movement_state mod 2];
                    vsp = 0;
                    break;
                case 3:
                    hsp = (target_grid[2,0] - x) / state_time[movement_state mod 2];
                    vsp = 0;
                    break;
                case 9:
                    hsp = 0;
                    vsp = (target_grid[3,1] - y) / state_time[movement_state mod 2];
                    break;
            }
            break;
        case 3: //Behavior of top right platform.
            switch(movement_state)
            {
                case 0:
                case 1:
                case 2:
                case 3:
                case 4:
                case 6:
                case 8:
                    hsp = 0;
                    vsp = 0;
                    break;
                case 5:
                    hsp = (target_grid[3,2] - x) / state_time[movement_state mod 2];
                    vsp = 0;
                    break;
                case 7:
                    hsp = (target_grid[3,0] - x) / state_time[movement_state mod 2];
                    vsp = 0;
                    break;
                case 9:
                    hsp = (target_grid[0,0] - x) / state_time[movement_state mod 2];
                    vsp = 0;
                    break;
            }
            break;
    }
}

//Animation logic
if(position == 0 || position = 3)   //Behavior of top two platforms.
{
    switch(movement_state)
    {
        case 4:
        case 6:
        case 8:
            if(state_switch_timestamp >= anim_start_move)    //Is the state getting ready to transition?
                image_index = (image_index + anim_speed) mod image_number;  //Start flashing green.
            else
                image_index = 0;
            break;
        case 5:
        case 7:
        case 9:
            image_index = 2 * image_number / 3 - 1; //Full glow frame.
            break;
        default:
            image_index = 0;
            break;

    }
}
else    //Behavior of bottom two platforms.
{
    switch(movement_state)
    {
        case 0:
        case 2:
        case 8:
            if(state_switch_timestamp >= anim_start_move)    //Is the state getting ready to transition?
                image_index = (image_index + anim_speed) mod image_number;  //Start flashing green.
            else
                image_index = 0;
            break;
        case 1:
        case 3:
        case 9:
            image_index = 2 * image_number / 3 - 1; //Full glow frame.
            break;
        default:
            image_index = 0;
            break;

    }
}

state_switch_timestamp++;