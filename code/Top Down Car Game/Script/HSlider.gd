extends HSlider


func _on_HSlider_mouse_exited():
	self.release_focus()
