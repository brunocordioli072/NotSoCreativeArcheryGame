extends KinematicBody2D
export(int) var SPEED: int = 10
export(int) var VICTORY: bool = false

var velocity = Vector2()

var time = 0
var start_timer = false
var initial_position = Vector2()

func _ready():
	initial_position = global_position

func _physics_process(delta):
	# start action, send arrow to right
	if Input.is_action_pressed("ui_right"):
		start_timer = true
		velocity = Vector2.RIGHT.normalized() * SPEED

	# check if had collision based on the return of move_and_collide
	var collision = move_and_collide(velocity)
	if collision != null:
		VICTORY = true

	# starts timer if start_timer == true and VICTORY is false
	if start_timer == true and VICTORY == false:
		time += 1
	
	# if timer == 120 reset arrow to the begin, reseting all variables
	if time == 120:
		global_position = initial_position
		velocity = Vector2()
		start_timer = false
		time = 0
