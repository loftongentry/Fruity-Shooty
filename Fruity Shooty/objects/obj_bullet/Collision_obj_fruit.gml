score += 10;

instance_destroy();
audio_play_sound(snd_fruit_boom, 1, false);
with(other){
	instance_destroy();
	
	if((sprite_index == spr_pineapple) || (sprite_index == spr_peach)){
		repeat(choose(1,2,3,4)){
			var new_fruit = instance_create_layer(x,y,"Instances",obj_fruit);
			new_fruit.sprite_index = choose(spr_cherry, spr_apple, spr_orange);
			}
		}
	else if((sprite_index == spr_cherry) || (sprite_index == spr_apple) || (sprite_index == spr_orange)){
		repeat(choose(1,2)){
			var new_fruit = instance_create_layer(x,y, "Instances", obj_fruit);
			new_fruit.sprite_index = choose(spr_banana, spr_watermelon);
		}
	}
	repeat(10){
		instance_create_layer(x,y, "Instances", obj_debris);
	}
}