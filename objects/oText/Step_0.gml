/// @description Insert description here
// You can write your code in this editor
lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.textSpeed;

x1 = lerp(x1, x1Target, lerpProgress);
x2 = lerp(x2, x2Targer, lerpProgress);

if (keyboard_check_pressed(vk_space)){

	var _messageLenght = string_length(message){
		if (textProgress >= _messageLenght){
			instance_destroy();
		}
		else{
			if(textProgress > 2){
				textProgress = _messageLenght;
			}
		}
	}

}