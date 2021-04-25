/// @description Insert description here
// You can write your code in this editor

if distance_to_object(obj_player) <= 300
{
playerreach = true


}else {
	
playerreach = false;}


if playerreach && rorelse = 1{

path_start(Path1, random(choose(5,6,7)), path_action_stop, 0);

playerreach = false;
rorelse -=1;
}else {

speed = 0;
}
