#define set_state(_new_state) {
    // Sets the state to the given state and resets the state timer.
    state = _new_state
    state_timer = 0
}

#define set_window(_new_window) {
    // Sets the window to the given state and resets the window timer.
    window = _new_window
    window_timer = 0
}