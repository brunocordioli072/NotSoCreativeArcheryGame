extends Area2D 


func _process(delta):
	var victory = get_node("Arrow").get("VICTORY")
	if victory == 1:
		$Victory.visible = true
	if Input.is_action_pressed("ui_left"):
		get_tree().reload_current_scene()
