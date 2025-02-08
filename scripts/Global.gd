extends Node
#Email formats follow this format:
# Key:{list of items}
# subject:{from, text, links}
var emails = {
	"Welcome Newbie":{"from":"Stephen Careers", "text":"Hello World", "links":" "},
	"Blueprints Needed":{"from":"Winston Digs", "text":"Bathroom", "links":" "},
	"Sick Today":{"from":"Katherine McGill", "text":"Sickness", "links":" "},
	"WHO DOESN'T LOVE MONEY?":{"from":"Richie Rich", "text":"Scammer get Scammed", "links":" "}
}
var emailSize = emails.size()
