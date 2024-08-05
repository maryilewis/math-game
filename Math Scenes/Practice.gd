extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func next_question():
	pass


func _on_selected_answer(value):
	print ("submit", value)
	pass # Replace with function body.


func _on_changed_answer(value):
	$Question.product = value
	print("change", value)
	pass # Replace with function body.
