extends TextureButton

var enabled := true

func _on_pressed() -> void:
	if enabled:
		$Sprite2D.texture = preload("res://assets/sprites/sound_off.png")
		Globals.musicEnabled = false
		enabled = false
	else:
		$Sprite2D.texture = preload("res://assets/sprites/sound_on.png")
		Globals.musicEnabled = true
		enabled = true
