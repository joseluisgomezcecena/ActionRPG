function playerStateRoll(){

	//Movement.
	hSpeed = lengthdir_x(speedRoll, direction); 
	vSpeed = lengthdir_y(speedRoll, direction); 
	
	moveDistanceRemaining = max(0,moveDistanceRemaining - speedRoll);
	var _collided = playerCollision();
	
	sprite_index = spriteRoll;
	
	var _totalFrames = sprite_get_number(sprite_index)/4;
	
	image_index = (CARDINAL_DIR * _totalFrames) + min(((1 - (moveDistanceRemaining / distanceRoll )) * _totalFrames ), _totalFrames - 1);
	
	//Change state
	if (moveDistanceRemaining <= 0){
		state = playerStateFree;
	}
	
	if ( _collided ){
		state = playerStateFree;
		screenShake(3, 30);
	}
}