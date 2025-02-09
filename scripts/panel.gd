extends Panel

@export var Received: Label;
@export var Stoped: Label;
@export var LetPass: Label;
@export var Grade: Label;
var timer: float = .5;
var timerReset: float = .5;
var labelNext: int = 0;
var running: bool = true
func _process(delta: float) -> void:
	if not running:
		return
	timer -= delta
	if timer <= 0:
		timer = timerReset
		if labelNext == 0:
			labelNext += 1
			Received.text = Received.text + ' ' + str((Global.correctEmails + Global.incorrectEmails))
		elif labelNext == 1:
			labelNext += 1
			Stoped.text = Stoped.text + ' ' + str(Global.correctEmails)
		elif labelNext == 2:
			labelNext += 1
			LetPass.text = LetPass.text + ' ' + str(Global.incorrectEmails)
		elif labelNext == 3:
			labelNext += 1
			Grade.text += ' ' + Global.getGrade()
		else:
			running = false
	
