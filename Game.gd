extends Area2D 


func _process(delta):
	var victory = get_node("Arrow").get("VICTORY")
	if victory == true:
		$Victory.visible = true
