extends Node
#Email formats follow this format:
# Key:{list of items}
# subject:{from, email, text, links}
var emails = {
	"Welcome Newbie":{"from":"Stephen Careers", "email":"", "text":"Hey there, newbie. Thanks for picking up the position as my trusty secretary. This job is a piece of cake; just forward the important stuff to me and delete anything unimportant or malicious. I don’t want my inbox cluttered with spam and nasty viruses. Just be careful: scammers nowadays are always hiding in plain sight.", "links":"I’m sure you’ll do great. Go ahead and delete this email.
– Your Boss, Stephen Careers
"},
	"Blueprints Needed":{"from":"Winston Digs", "email":"", "text":"Bathroom", "links":" "},
	"Sick Today":{"from":"Katherine McGill", "email":"", "text":"Sickness", "links":" "},
	"WHO DOESN'T LOVE MONEY?":{"from":"Richie Rich", "email":"", "text":"Scammer get Scammed", "links":" "}
}
var emailSize = emails.size()
