extends TextureButton

func _ready():
	pass # Replace with function body.
	
func _toggled(button_pressed):
	get_tree().reload_current_scene()
