extends CharacterBody2D

var is_animating = false

func _process(_delta):
	if Input.is_action_pressed("ui_left"):
		global_position.x -=3
		
	elif Input.is_action_pressed("ui_right"):
		global_position.x +=3
		
	if Input.is_action_pressed("ui_up"):
		global_position.y -=3
		
	elif Input.is_action_pressed("ui_down"):
		global_position.y +=3
		
	if Input.is_action_pressed("ui_accept") and not is_animating:
		is_animating = true
		var tween = create_tween()
		
		tween.tween_property(self, "scale", Vector2(1.5, 1.5), 0.2).set_trans(Tween.TRANS_QUINT).set_ease(Tween.EASE_OUT)
		
		tween.tween_property(self, "scale", Vector2(1.0, 1.0), 0.2).set_trans(Tween.TRANS_QUINT).set_ease(Tween.EASE_OUT)
		
		await tween.finished
		is_animating = false
