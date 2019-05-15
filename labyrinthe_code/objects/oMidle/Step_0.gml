if collision_circle(x,y,15,oBoat,false,true) && !audio_is_playing(aText_22) && toggle && !global.mute
{
	fade = true;
	toggle = false;
	audio_play_sound(aText_22,5,false);	
}

if global.mute && collision_circle(x,y,15,oBoat,false,true)
{
	toggle = false;
}

if  !audio_is_playing(aText_22) && toggle == false
{
	alpha -= 0.005;
	if alpha < 0 alpha = 0;
	var sprite_id = layer_background_get_id("Maze");
	layer_background_alpha(sprite_id,alpha);
	
	#region play sound
	/*if toggle2 
	{
		toggle2 = false;
		if !audio_is_playing(aText_01)
		{
			audio_play_sound(aText_01,5,false);
		}
		if !audio_is_playing(aText_02)
		{
			audio_play_sound(aText_02,5,false);
		}
		if !audio_is_playing(aText_03)
		{
			audio_play_sound(aText_03,5,false);
		}
		if !audio_is_playing(aText_04)
		{
			audio_play_sound(aText_04,5,false);
		}
		if !audio_is_playing(aText_05)
		{
			audio_play_sound(aText_05,5,false);
		}
		if !audio_is_playing(aText_06)
		{
			audio_play_sound(aText_06,5,false);
		}
		if !audio_is_playing(aText_07)
		{
			audio_play_sound(aText_07,5,false);
		}
		if !audio_is_playing(aText_08)
		{
			audio_play_sound(aText_08,5,false);
		}
		if !audio_is_playing(aText_09)
		{
			audio_play_sound(aText_09,5,false);
		}
		if !audio_is_playing(aText_10)
		{
			audio_play_sound(aText_10,5,false);
		}
		if !audio_is_playing(aText_11)
		{
			audio_play_sound(aText_11,5,false);
		}
		if !audio_is_playing(aText_12)
		{
			audio_play_sound(aText_12,5,false);
		}
		if !audio_is_playing(aText_13)
		{
			audio_play_sound(aText_13,5,false);
		}
		if !audio_is_playing(aText_14)
		{
			audio_play_sound(aText_14,5,false);
		}
		if !audio_is_playing(aText_15)
		{
			audio_play_sound(aText_15,5,false);
		}
		if !audio_is_playing(aText_16)
		{
			audio_play_sound(aText_16,5,false);
		}
		if !audio_is_playing(aText_17)
		{
			audio_play_sound(aText_17,5,false);
		}
		if !audio_is_playing(aText_18)
		{
			audio_play_sound(aText_18,5,false);
		}
		if !audio_is_playing(aText_19)
		{
			audio_play_sound(aText_19,5,false);
		}
		if !audio_is_playing(aText_20)
		{
			audio_play_sound(aText_20,5,false);
		}
		if !audio_is_playing(aText_21)
		{
			audio_play_sound(aText_21,5,false);
		}
		if !audio_is_playing(aText_23)
		{
			audio_play_sound(aText_23,5,false);
		}
		if !audio_is_playing(aText_24)
		{
			audio_play_sound(aText_24,5,false);
		}
	
		if !audio_is_playing(aText_25)
		{
			audio_play_sound(aText_25,5,false);
		}
		if !audio_is_playing(aText_26)
		{
			audio_play_sound(aText_26,5,false);
		}
		if !audio_is_playing(aText_27)
		{
			audio_play_sound(aText_27,5,false);
		}
		if !audio_is_playing(aText_28)
		{
			audio_play_sound(aText_28,5,false);
		}
		if !audio_is_playing(aText_29)
		{
			audio_play_sound(aText_29,5,false);
		}
		if !audio_is_playing(aText_30)
		{
			audio_play_sound(aText_30,5,false);
		}
		if !audio_is_playing(aText_31)
		{
			audio_play_sound(aText_31,5,false);
		}
		if !audio_is_playing(aText_32)
		{
			audio_play_sound(aText_32,5,false);
		}
		if !audio_is_playing(aText_33)
		{
			audio_play_sound(aText_33,5,false);
		}
		if !audio_is_playing(aText_34)
		{
			audio_play_sound(aText_34,5,false);
		}
		if !audio_is_playing(aText_35)
		{
			audio_play_sound(aText_35,5,false);
		}
		if !audio_is_playing(aText_36)
		{
			audio_play_sound(aText_36,5,false);
		}
		if !audio_is_playing(aText_37)
		{
			audio_play_sound(aText_37,5,false);
		}
		if !audio_is_playing(aText_38)
		{
			audio_play_sound(aText_38,5,false);
		}
		if !audio_is_playing(aText_39)
		{
			audio_play_sound(aText_39,5,false);
		}
		if !audio_is_playing(aText_40)
		{
			audio_play_sound(aText_40,5,false);
		}
		if !audio_is_playing(aText_41)
		{
			audio_play_sound(aText_41,5,false);
		}
		if !audio_is_playing(aText_42)
		{
			audio_play_sound(aText_42,5,false);
		}
		if !audio_is_playing(aText_43)
		{
			audio_play_sound(aText_43,5,false);
		}
		if !audio_is_playing(aText_44)
		{
			audio_play_sound(aText_44,5,false);
		}
		if !audio_is_playing(aText_45)
		{
			audio_play_sound(aText_45,5,false);
		}
		if !audio_is_playing(aText_46)
		{
			audio_play_sound(aText_46,5,false);
		}
	}
	*/
	#endregion
}

if alpha == 0
{
	instance_destroy(oWall);
}


