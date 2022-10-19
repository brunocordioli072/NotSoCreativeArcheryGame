extends KinematicBody2D
export(int) var SPEED: int = 0
export(int) var VICTORY: bool = false

var velocity = Vector2()

var count = 0
var start_counting = false
var initial_position = Vector2()

func _ready():
	initial_position = global_position

func _physics_process(delta):
	if count == 120:
		global_position = initial_position
		velocity = Vector2()

	if start_counting == true and VICTORY != true:
		count += 1

	if Input.is_action_pressed("ui_right"):
		start_counting = true
		SPEED = 10
		velocity = Vector2.RIGHT.normalized() * SPEED


	var collision = move_and_collide(velocity)
	if collision != null:
		VICTORY = true
