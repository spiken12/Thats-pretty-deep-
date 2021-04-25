/// @description Insert description here

//Rörelse och stop

if keyboard_check(ord("R")){
room_restart();
}

if keyboard_check(vk_escape){
game_end()
}

#region


imageangle +=0.5 * falingspd ;


if imageangle >= 360{

imageangle = 0; 
}

#endregion


#region

key_left = keyboard_check((ord("A"))) or keyboard_check(vk_left);
key_right = keyboard_check((ord("D"))) or keyboard_check(vk_right);

key_space = keyboard_check(vk_space);

if key_left && falling 
{	
hsp -= spd;
	}
	
if key_right && falling 
{	
hsp += spd;
	}
	

	




if key_space {




falingspd -= falingspd/70
}



if place_meeting(x+hsp,y,obj_wall)
	{
	
	while (!place_meeting(x+sign(hsp),y,obj_wall)) x+=sign(hsp); 
hsp = 0;
	}
	
	
	
if !place_meeting(x,y+1,obj_wall) && falling == true{
y += vsp + falingspd


falingspd += 0.10; 

global.playerdepth += obj_player.y/room_speed;

	
}else 
{
	

y += 0;
	}
	
	
x += hsp
#endregion
	
	
	

if place_meeting(x,y+1,obj_spike){
	
	
	
falling = false;
dead = true;
instance_destroy(self);
instance_create_depth(x,y,1,obj_death);

 effect_create_below(ef_firework,x,y,1,c_red)
audio_play_sound(Sound1,1,false);
	
	
	}
	
	if place_meeting(x,y+1,obj_win_block){
	
	global.win = true;
	}