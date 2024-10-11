class_name Level

extends Node2D

@export var level := 0

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("m"):
		if Globals.musicEnabled:
			Globals.musicEnabled = false
		else:
			Globals.musicEnabled = true

func on_ball_move(tries : int) -> void:
	$Base/TriesLabel.text = str(tries) + " Tries"


func on_zero_ball_tries() -> void:
	pass


func _on_hole_2_on_game_beaten() -> void:
	$GameBeatText/Label.visible = true
	$GameBeatText/Button.visible = true


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level1.tscn")
