extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2(0, 1)
var timer = 0
var timer_limit = 60
var direction = "up"

func change_direction():
	if direction == "up":
			velocity.y = -1
			direction = "down"
	else:
		velocity.y = 1
		direction = "up"

	timer = 0

func _physics_process(delta):
	# init timer
	timer += 1

	# move
	velocity = velocity.normalized() * speed
	move_and_slide(velocity)

	# change direction if timer = timer_limit
	if timer == timer_limit:
		# add time to travel for down direction
		if timer_limit == 60:
			timer_limit = 100
	
		change_direction()
