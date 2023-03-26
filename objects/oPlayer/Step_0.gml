// GET THE KEYBOARD INPUT
up = keyboard_check(vk_up);
right = keyboard_check(vk_right);
down = keyboard_check(vk_down);
left = keyboard_check(vk_left);

// SET THE SPEED
hsp = (right - left) * spd;

// ADDING THE SPEED TO THE COORDINATES
x += hsp;