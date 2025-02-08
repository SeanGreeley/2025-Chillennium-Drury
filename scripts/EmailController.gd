extends Control

var Opener = {"Welcome Newbie":{"name":"Stephen Careers", "text":"Hello World", "links":null}}
var mail = Global.emails
var mailSize = Global.emailSize
var random_key = mail.keys()[randi() % mailSize]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#$ItemList.add_item(Opener.("Welcome Newbie"))
	$ItemList.add_item(random_key)
	#$ItemList.add_item(mail)
	#$ItemList.add_item("WHO DOESN'T LOVE MONEY?")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _openMail():
	$VBoxContainer/Subject.text = mail[$ItemList.get_item_text()]["name"]
