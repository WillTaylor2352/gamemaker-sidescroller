///move(collisionObject)
var collisionObject = argument0;

/**** horizontal collisions ****/
// if there is a collision horizontally 
if (place_meeting(x+hSpd, y, collisionObject))
{
    // while the player is not hitting a block in a horizontal direction
    while(!place_meeting(x+sign(hSpd), y, collisionObject)) 
    {
        // move the player in the direction of the object until it hits (while desired)
        x+=sign(hSpd);
    }
    // set speed to zero if collision is detected
    hSpd = 0;
}
x+=hSpd;

/**** vertical collisions ****/
// if there is a collision vertically
if(place_meeting(x, y+vSpd, collisionObject))
{
    // while the player is not hitting a block in a vertical direction
    while(!place_meeting(x, y+sign(vSpd), collisionObject))
    {
        // move the player in the direction of the object until it hits (while desired)
        y+=sign(vSpd);
    }
    // set speed to zero if collision is detected
    vSpd = 0;
}
y+=vSpd;


