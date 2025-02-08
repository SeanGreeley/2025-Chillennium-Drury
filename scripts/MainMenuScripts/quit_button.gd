extends Button

func _ready() -> void:
	pressed.connect(self.button_pressed)
	
func button_pressed() -> void:
	get_tree().quit()
