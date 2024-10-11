extends Node2D

signal on_game_beaten

func _ready() -> void:
	$AnimatedSprite2D.play("default")

func _on_body_entered(body: Ball) -> void:
	
	body.queue_free()
	$Timer.start(1.5)
	$AnimatedSprite2D.play("goal")
	$AudioStreamPlayer2D.play()
	

func _on_timer_timeout() -> void:
	var currentLevel : Level = get_tree().current_scene
	
	if currentLevel.level < Globals.levels:
		get_tree().change_scene_to_file("res://scenes/levels/level" + str(currentLevel.level+1)+".tscn")
		$Timer.stop()
	elif currentLevel.level == Globals.levels:
		on_game_beaten.emit()
		
