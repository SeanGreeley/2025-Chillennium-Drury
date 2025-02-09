extends Button

var callScene = load("res://scenes/VideoCall.tscn")

func _ready():
	pass

func _pressed():
	if Global.currentSubject != "Void":
		$ButtonSound.play()
		if (text == "Delete" and Global.emails[Global.currentSubject]["value"] == 1) or (text != "Delete" and Global.emails[Global.currentSubject]["value"] == -1):
			Global.incorrectEmails+=1
			var newCall = callScene.instantiate()
			get_tree().root.add_child(newCall)
		else:
			Global.correctEmails+=1
