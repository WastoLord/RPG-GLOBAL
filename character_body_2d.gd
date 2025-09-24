extends CharacterBody2D

func _process(_delta):
	if Input.is_action_pressed("ui_left"):
		global_position.x -=3
		
	elif Input.is_action_pressed("ui_right"):
		global_position.x +=3
		
	if Input.is_action_pressed("ui_up"):
		global_position.y -=3
		
	elif Input.is_action_pressed("ui_down"):
		global_position.y +=3
	if Input.is_action_pressed("ui_accept"):
		while global_scale.x < 2:
			global_scale.x += 0.1
			global_scale.y += 0.1
			break
			
		while global_scale.x > 1:
			global_scale.x -= 0.1
			global_scale.y -= 0.1 
			continue
