/// @description Insert description here
// You can write your code in this editor

if(!point_in_rectangle(x, y, 
	global.cameraX, global.cameraY,
	global.cameraX + global.cameraWidth,
	global.cameraY + global.cameraHeight))
{
	instance_destroy();
}