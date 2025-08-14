image_angle -= rotspd;
rectalpha *= .9;

__view_set( e__VW.XView, 0, 0 );
__view_set( e__VW.YView, 0, 0 );
__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (random_range(-shake, shake)) );
__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (random_range(-shake, shake)) );
shake *= .9

if shake <= 1 {
    shake = 0;
}

