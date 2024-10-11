extends Node2D


func _on_area_2d_body_entered(body: CharacterBody2D) -> void:
	$AudioStreamPlayer2D.play()
	body.velocity *= 2
