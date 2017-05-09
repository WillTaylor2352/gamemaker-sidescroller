///LedgeGrabState()
var up = keyboard_check(ord('W'));
var upSpace = keyboard_check(vk_space);
var down = keyboard_check(ord('S'));

//vSpd = 0;

if (down)
{
    state = MoveState;
}

if (up || upSpace)
{
    state = MoveState;
    vSpd = -16;
}
