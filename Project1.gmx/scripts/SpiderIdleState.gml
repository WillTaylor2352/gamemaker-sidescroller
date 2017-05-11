///spiderIdleState
if(instance_exists(objPlayer))
{
    var dis = distance_to_object(objPlayer);
    
    if(dis < sight && alarm[0] <= 0)
    {
        image_speed = .5;
        
        //make sure we face player
        if (objPlayer.x != x)
        {
            image_xscale = sign(objPlayer.x - x);
        }
    }
}

