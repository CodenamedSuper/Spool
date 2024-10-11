extends Node2D




func on_body_entered(body: Node2D) -> void:
	$AudioStreamPlayer2D.play()
	get_tree().reload_current_scene()
