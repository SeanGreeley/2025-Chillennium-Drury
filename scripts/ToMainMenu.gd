extends Button

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pressed.connect(self.button_pressed)
	
func button_pressed() -> void:
	$ClickSound.play()
	await get_tree().create_timer(0.35).timeout
	get_tree().change_scene_to_file("res://scenes/GameTitle.tscn")
