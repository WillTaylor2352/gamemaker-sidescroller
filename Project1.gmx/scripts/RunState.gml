///moveState()

var right = keyboard_check(ord('D'));
var left = keyboard_check(ord('A'));
var up = keyboard_check(ord('W'));
var upRelease = keyboard_check_released(ord('W'));
var upSpace = keyboard_check(vk_space);
var upSpaceRelease = keyboard_check_released(vk_space);
var down = keyboard_check(ord('S'));

//if not on the ground
if (!place_meeting(x, y+1, objSolid))
{
    // change player pos relative to the gravity (in create event)
    vSpd+=grav;
    
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
} 

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

/**** similar to left / right movement, just for up and down
if (up)
{
    vSpd = -spd;    
}

if (down)
{
    vSpd = spd;    
}
*/

/**** friction (tells the player to stop moving) ****/
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
