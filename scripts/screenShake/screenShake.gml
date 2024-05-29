// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screenShake(){
	
	with (global.iCamera){
	
		if (argument0 > shakeRemain){
			shakeMagnitude = argument0;
			shakeRemain = shakeMagnitude;
			shakeLenght = argument1;
		
		}
	}
}