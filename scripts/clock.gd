extends Label

var currTime = 9
var times = [10, 11, 12, 1, 2, 3, 4, 5]
var noon = "AM"
var timeloops = 0
var pos = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	text = "%d:%02d AM" % [(currTime), (timeloops)]

func _on_timer_timeout() -> void:
	timeloops += 5
	if (timeloops == 60):
		timeloops = 0
		currTime = times[pos]
		pos += 1
		
	if (currTime == 12):
		noon = "PM"
		
	if (currTime == 5):
		get_tree().change_scene_to_file("res://scenes/ShiftReport.tscn")
		
	text = "%d:%02d %s" % [(currTime), (timeloops), noon]
