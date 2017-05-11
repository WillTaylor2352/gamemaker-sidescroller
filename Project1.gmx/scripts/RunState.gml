///moveState()

var right = keyboard_check(ord('D')) || keyboard_check(vk_right);
var left = keyboard_check(ord('A')) || keyboard_check(vk_left);
var up = keyboard_check(ord('W')) || keyboard_check(vk_up);
var upRelease = keyboard_check_released(ord('W')) || keyboard_check_released(vk_up);
var upSpace = keyboard_check(vk_space);
var upSpaceRelease = keyboard_check_released(vk_space);
var down = keyboard_check(ord('S')) || keyboard_check(vk_down);
darkenBehind();

//if not on the ground
if (!place_meeting(x, y+1, objDirt))
{
    // change player pos relative to the gravity (in create event)
    vSpd+=grav;
    
    // set jump animation
    sprite_index = sprPlayerJump;
    image_speed = 0;
    image_index = vSpd > 0;
    
    // control jumping
    if ((upRelease || upSpaceRelease) && vSpd < -6) 
    {
        vSpd = -6;
    }
}
// otherwise if on the ground 
else
{
    // set player speed to 0
    vSpd = 0;
    // if player presses up key
    if(up || upSpace) 
    {
        // jump 16 pixels into the air
        vSpd = -16;
    }
    
    // set player sprite to idle if no horizontal movement
    if (hSpd == 0)
    {
        sprite_index = sprPlayerIdle;
    }
    // otherwise, make the player's walk animation run faster (because we're running)
    else 
    {
        sprite_index = sprPlayerWalk;
        image_speed = 1.5;
    }
}
 
                                /* /// this code is handled by acceleration
                                // if right is pushed, set hspeed to positive speed (right)
                                if (right)    
                                {
                                    hSpd = runSpd;
                                }
                                
                                // if left is pushed, set hspeed to negative speed (left)
                                if (left)
                                {
                                    hSpd = -runSpd;
                                }
                                */

// acceleration
if (left||right)
{
    hSpd += (right-left)*acc;
    hSpdDir = right - left
    
    if (hSpd > runSpd)
    {
        hSpd = runSpd;
    }
    if (hSpd < -runSpd)
    {
        hSpd = -runSpd;
    }
}
/**** friction (tells the player to stop moving) ****/
else
{
    applyFriction(2);
}

// change the direction the player is facing
if (hSpd != 0)
{
    image_xscale = sign(hSpd);
}


// change the direction the player is facing
if (hSpd != 0)
{
    image_xscale = sign(hSpd);
}

                                /**** similar to left / right movement, just for up and down
                                if (up)
                                {
                                    vSpd = -spd;    
                                }
                                
                                if (down)
                                {
                                    vSpd = spd;    
                                }
                                


                                // if both right and left are not pushed, set speed to zero
                                if (!right && !left)
                                {
                                    hSpd = 0;
                                }
                                
                                /**** similar to left / right friction, only tells the player to stop moving up and down
                                if (!up && !down)
                                {
                                    vSpd = 0;
                                }
                                */

move(objSolid);

var falling = y-yprevious > 0;
var wasNoWallWhileFalling = !position_meeting(x+17*image_xscale, yprevious, objSolid);
var isWall = position_meeting(x+17*image_xscale, y, objSolid);

if(falling && wasNoWallWhileFalling && isWall)
{
    hSpd = 0;
    vSpd = 0;
    
    //move against the ledge
    while (!place_meeting(x+image_xscale, y, objSolid))
    {
        x+=image_xscale;
    }
    while(position_meeting(x+17*image_xscale, y-1, objSolid))
    {
        y-=1;
    }
    
    state = LedgeGrabState;
}


