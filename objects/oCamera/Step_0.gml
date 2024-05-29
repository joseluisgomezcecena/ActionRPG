/// @description Insert description here
// You can write your code in this editor


//update destination.
if (instance_exists(follow)){

	xTo = follow.x;
	yTo = follow.y;

}

//update position
x += (xTo - x) /15;
y += (yTo - y)/15;


//keep camera center inside room.
x = clamp(x, viewWithHalf, room_width - viewWithHalf);
y = clamp(y, viewHeightHalf, room_height- viewHeightHalf);


//Screen shake
x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);

shakeRemain = max(0, shakeRemain - ((1/shakeLenght) * shakeMagnitude));

camera_set_view_pos(cam, x - viewWithHalf, y- viewHeightHalf);