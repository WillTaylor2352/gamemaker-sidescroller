///snakeMoveRightState()
darkenBehind();

var wallAtRight = place_meeting(x+1, y, objDirt);
var ledgeAtRight = !position_meeting(bbox_right+1, bbox_bottom+1, objDirt);

if (wallAtRight || ledgeAtRight)
{
    state = SnakeMoveLeftState;
}

// control the snake sprite
image_xscale = 1;

// move the snake
x += 1;


