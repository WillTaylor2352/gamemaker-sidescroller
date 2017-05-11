///darkenBehind()
if (position_meeting(x,y,objDirtNS))
{
    if (image_alpha > .5)
    {
        image_blend = c_black;
        image_alpha = .5;
    }
}
else
{
    if (image_alpha <= .5)
    {
        image_blend = c_white;
        image_alpha = 1;
    }
}
