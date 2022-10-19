extends KinematicBody2D

export (int) var speed = 200

var velocity = Vector2()
var count = 0
var limit = 50
var direction = "up"

func change_direction():
	if count == limit:
		# add pixels to travel for down direction
		if limit == 50:
			limit += 70
		
		# change direction
		if direction == "up":
			direction = "down"
		else:
			direction = "up"
		
		# reset
		count = 0
	count += 1

func move_target():
	velocity = Vector2()

	if direction == "down":
		velocity.y += 1
	if direction == "up":
		velocity.y -= 1

	velocity = velocity.normalized() * speed

func _physics_process(delta):
	change_direction()
	move_target()
	velocity = move_and_slide(velocity)
