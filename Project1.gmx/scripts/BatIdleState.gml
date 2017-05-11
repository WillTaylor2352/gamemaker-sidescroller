///batIdleState()

image_index = sprBatIdle;

// 
if(instance_exists(objPlayer))
{
    darkenBehind();
    var dis = point_distance(x, y, objPlayer.x, objPlayer.y);
    
    if (dis < sight)
    {
        state = BatChaseState;
    }

}

