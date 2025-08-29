extends Button


func _on_toggled(toggled_on: bool) -> void:
	if toggled_on == true:
		$AudioStreamPlayer.play()
	else:
		$AudioStreamPlayer.stop()
