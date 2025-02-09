extends Control
var mail = Global.emails
var mailSize = Global.emailSize - 1
var random_key = mail.keys()[randi() % mailSize + 1]
var employees = {
	"Bert":"res://assets/companyAvatars/bert.png",
	"Katherine":"res://assets/companyAvatars/katherine.png", 
	"Molly":"res://assets/companyAvatars/molly.png", 
	"Winston":"res://assets/companyAvatars/winston.png"
	}

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$ItemList.connect("item_clicked", _openMail)
	for empNum in range(employees.size()):
		var currEmp = (employees.keys()[empNum])
		$EmployeeList.add_item(currEmp, load(employees[currEmp]))
	$ItemList.add_item(mail.keys()[0])
	$ItemList.add_item(random_key)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _openMail(index, _vector2, _mouse_index):
	var clickIndex = str($ItemList.get_item_text(index))
	Global.currentSubject = clickIndex
	var clickedMail = mail[clickIndex]
	$VBoxContainer/From.text = "From: %s" % clickedMail["from"]
	$VBoxContainer/Email.text = "Email: %s" % clickedMail["email"]
	$VBoxContainer/Subject.text = "Subject: %s" % clickIndex
	$VBoxContainer/Text.text = clickedMail["text"]
	$VBoxContainer/Links.text = clickedMail["links"]

func delete_by_subject(deleteSubject:String):
	if deleteSubject != "Void":
		for i in $ItemList.item_count:
			if str($ItemList.get_item_text(i)) == deleteSubject:
				$ItemList.remove_item(i)
		Global.currentSubject = "Void"
		$VBoxContainer/From.text = ""
		$VBoxContainer/Email.text = ""
		$VBoxContainer/Subject.text = ""
		$VBoxContainer/Text.text = ""
		$VBoxContainer/Links.text = ""

func _on_delete_button_pressed():
	delete_by_subject(Global.currentSubject)

func _on_forward_button_pressed():
	delete_by_subject(Global.currentSubject)
