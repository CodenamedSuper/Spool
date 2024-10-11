extends Node2D



func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level1.tscn")
	$AudioStreamPlayer2D.play()


func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("space"):
		$AudioStreamPlayer2D.play()
		get_tree().change_scene_to_file("res://scenes/levels/level1.tscn")
