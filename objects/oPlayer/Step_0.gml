// GET THE KEYBOARD INPUT
up = keyboard_check(vk_up)
right = keyboard_check(vk_right)
down = keyboard_check(vk_down)
left = keyboard_check(vk_left)

// SET THE SPEED
hsp = (right - left) * spd
vsp = vsp + grv

// COLLISIONS
if (place_meeting(x + hsp, y, oCollision)) {
	while (!place_meeting(x + sign(hsp), y, oCollision)) {
		x += sign(hsp)
	}
	hsp = 0
}

// ADDING THE SPEED TO THE COORDINATES
x += hsp
// y += vsp

// MAX SPEED OF FALLING
if (vsp > terminalVelocity) vsp = terminalVelocity