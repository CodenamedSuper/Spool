extends AudioStreamPlayer

func _physics_process(delta: float) -> void:
	if Globals.musicEnabled:
		pitch_scale = 1
	else:
		pitch_scale = 0.01
