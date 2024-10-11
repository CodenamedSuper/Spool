class_name Ball

extends CharacterBody2D

var speed := 0
var mouse_position := Vector2()
var friction := 0.01

signal on_move
signal on_zero_tries

var tries := 3

func _physics_process(delta: float) -> void:
	mouse_position = get_global_mouse_position()
	$ArrowSprite.rotation = position.angle_to_point(mouse_position)
	
	
	if Input.is_action_just_pressed("left_click") and tries > 0:
		var direction = (mouse_position - position).normalized()
		speed = position.distance_to(mouse_position) / 10
		velocity = direction * (speed * 25)
		tries -= 1
		on_move.emit(tries)
		$MoveSoundPlayer.play()
	
	if Input.is_action_just_pressed("space"):
		get_tree().reload_current_scene()
	
	
	velocity.x = lerp(velocity.x, 0.0, friction)
	velocity.y = lerp(velocity.y, 0.0, friction)
	var collision := move_and_collide(velocity * delta)
	if collision:
		velocity = velocity.bounce(collision.get_normal())
