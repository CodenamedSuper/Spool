extends Sprite2D

var limit := 60

var speed := 0.2

var counter := 0

var goingUp := false


func _physics_process(delta: float) -> void:
	if goingUp:
		position.y -= speed
	if goingUp == false:
		position.y += speed
	counter += 1
	
	if counter >= limit:
		if (goingUp):
			goingUp = false
		else:
			goingUp = true
		counter = 0
