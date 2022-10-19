extends KinematicBody2D
export(int) var SPEED: int = 0
export(int) var VICTORY: int = 0

var velocity = Vector2()

func _physics_process(delta):

	if Input.is_action_pressed("ui_right"):
		SPEED = 10
		velocity = Vector2.RIGHT.normalized() * SPEED

	var collision = move_and_collide(velocity)

	if collision != null:
		VICTORY = 1
