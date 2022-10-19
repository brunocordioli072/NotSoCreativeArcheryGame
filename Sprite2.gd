extends Sprite


func _process(delta):
	var victory = get_node("Arrow").get("VICTORY")
	if victory == 1:
		self.visible = false
	
