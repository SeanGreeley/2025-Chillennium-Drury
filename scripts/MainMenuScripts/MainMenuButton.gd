extends Button

@export var menu: Panel

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if button_pressed == false:
		menu.hide()
		menu.visible = false
	else:
		menu.show()
