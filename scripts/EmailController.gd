extends Control
var mail = Global.emails
var mailSize = Global.emailSize - 1
var random_key = mail.keys()[randi() % mailSize + 1]
var employees = [
	"bert", 
	"katherine", 
	"molly", 
	"winston"]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$ItemList.connect("item_clicked", _openMail)
	for empNum in range(employees.size()):
		var currEmp = employees[empNum]
		$EmployeeList.add_item(currEmp.capitalize())#, load("res://assets/companyAvatars/.png")) % currEmp
	$ItemList.add_item(mail.keys()[0])
	$ItemList.add_item(random_key)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _openMail(index, _vector2, _mouse_index):
	var clickIndex = str($ItemList.get_item_text(index))
	var clickedMail = mail[clickIndex]
	$VBoxContainer/From.text = "From: %s" % clickedMail["from"]
	$VBoxContainer/Email.text = "Email: %s" % clickedMail["email"]
	$VBoxContainer/Subject.text = "Subject: %s" % clickIndex
	$VBoxContainer/Text.text = clickedMail["text"]
	$VBoxContainer/Links.text = clickedMail["links"]
