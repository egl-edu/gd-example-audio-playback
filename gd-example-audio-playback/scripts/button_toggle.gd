extends Button

func _on_toggled(toggled_on: bool) -> void:
	if toggled_on:
		$AudioStreamPlayer.play()
	else:
		$AudioStreamPlayer.stop()
