extends Button
signal area_passer(area)
var new_area_scene = preload("uid://xseu36qbixsb")

func _on_pressed() -> void:
	var new_area = new_area_scene.instantiate()
	%AreaContainer.add_child(new_area)
	new_area.changebg.load_bg.connect(change_bg)
	emit_signal("area_passer", new_area)
	pass # Replace with function body.

func change_bg():
	%BGLoader.popup()
