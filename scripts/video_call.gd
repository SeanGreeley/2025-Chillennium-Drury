extends Control

var rawRatio = 0.0

func _ready():
	$Speech.visible_ratio = 0
	rawRatio = 0
	$Stephen.play()

func _process(delta):
	if $Speech.visible_ratio < 1:
		rawRatio += 20.0 * delta/(len($Speech.text)+1.0)
		$Speech.visible_ratio = floor(rawRatio*50)/50
