///batIdleState()

image_index = sprBatIdle;

// 
if(instance_exists(objPlayer))
{
    var dis = point_distance(x, y, objPlayer.x, objPlayer.y);
    
    if (dis < sight)
    {
        state = BatChaseState;
    }

}

