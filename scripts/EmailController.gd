extends Control

var Opener = {"name"="Stephen Careers", "subject"="Welcome Newbie", "text"="Hello World", "links"=null}
var mail = Global.emails

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$ItemList.add_item(Opener["subject"])
	$ItemList.add_item(mail[0]["subject"])
	$ItemList.add_item(mail[1]["subject"])
	$ItemList.add_item("WHO DOESN'T LOVE MONEY?")
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
