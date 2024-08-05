extends HBoxContainer
signal selected_answer
signal changed_answer

const max_characters = 6

# Called when the node enters the scene tree for the first time.
func _ready():
	connect_buttons()

# connect buttons to input
func connect_buttons():
	var index = 0
	for child in $NumberButtons.get_children():
		(child as Button).pressed.connect(append_numeral.bind(str(index)))
		index += 1

func clear():
	$Controls/AnswerText.text = ""
	changed_answer.emit("")

func submit():
	selected_answer.emit($Controls/AnswerText.text)

func append_numeral(x: String):
	# remove leading zeros
	var text = $Controls/AnswerText.text
	while text.length() > 0 and text[0] == "0":
		text = text.split("0")[1]
	$Controls/AnswerText.text = text
	# append new numeral
	if $Controls/AnswerText.text.length() < max_characters:
		$Controls/AnswerText.text = $Controls/AnswerText.text + x
		changed_answer.emit($Controls/AnswerText.text)
