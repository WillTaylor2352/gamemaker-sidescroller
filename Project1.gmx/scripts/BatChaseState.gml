///batChaseState()
if (instance_exists(objPlayer))
{
    var dir = point_direction(x, y, objPlayer.x, objPlayer.y);
    hSpd = lengthdir_x(spd, dir);
    vSpd = lengthdir_y(spd, dir);
    
    sprite_index = sprBatFly;
    
    if (hSpd != 0)
    {
        image_xscale = sign(hSpd);
    }
    
    // move
    move(objDirt);
}
