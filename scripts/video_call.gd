extends Control

var rawRatio = 0.0
var speechText = ""

func _ready():
	visible = false
	$Speech.visible_ratio = 0
	rawRatio = 0
	speechText = Global.emails[Global.currentSubject]["anger"]
	$Speech.text = speechText
	await get_tree().create_timer(3.0).timeout
	visible = true
	$Stephen.play("loading")
	$CallSound.play()
	await get_tree().create_timer(3.0).timeout
	$Stephen.play("talking")
	$TalkSound.play()

func _process(delta):
	if $Speech.visible_ratio < 1 and $Stephen.animation == "talking":
		rawRatio += 20.0 * delta/(len($Speech.text)+1.0)
		$Speech.visible_ratio = floor(rawRatio*50)/50
	elif $Speech.visible_ratio >= 1:
		$TalkSound.stop()
		await get_tree().create_timer(2.0).timeout
		queue_free()
