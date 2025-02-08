extends Node
#Email formats follow this format:
# Key:{list of items}
# subject:{fromName, text, links}
var emails = {
	"Blueprints Needed":{"name":"Winston Digs", "text":"Bathroom", "links":null},
	"Sick Today":{"name":"Katherine McGill", "text":"Sickness", "links":null},
	"WHO DOESN'T LOVE MONEY?":{"name":"Richie Rich", "text":"Scammer get Scammed", "links":null}
}
var emailSize = emails.size()
