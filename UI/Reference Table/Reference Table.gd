extends GridContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	for h in range(1,13):
		add_label(h, true)
	
	for i in range(1,13):
		add_label(i, true)
		for j in range(1,13):
			add_label(i * j)

func add_label(x: int, header = false):
	var label = RichTextLabel.new()
	
	label.bbcode_enabled = true
	if header:
		label.text = '[center][b]' + str(x) + '[/b][/center]'
	else:
		label.text = '[center]' + str(x) + '[/center]'
	label.custom_minimum_size.x = 30
	label.custom_minimum_size.y = 30
	add_child(label)
