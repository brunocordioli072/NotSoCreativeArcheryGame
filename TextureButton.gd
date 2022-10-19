extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _toggled(button_pressed):
#	print("to aqui")
	get_tree().reload_current_scene()
