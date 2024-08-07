extends GridContainer

# Called when the node enters the scene tree for the first time.
func _ready():
	#show_table()
	show_column(2)

func add_label(x, header = false):
	var label = RichTextLabel.new()
	
	label.bbcode_enabled = true
	if header:
		label.text = '[center][b]' + str(x) + '[/b][/center]'
	else:
		label.text = '[center]' + str(x) + '[/center]'
	label.custom_minimum_size.x = 30
	label.custom_minimum_size.y = 30
	add_child(label)

func show_table():
	columns = 13
	for c in get_children():
		remove_child(c)
	add_label("")
	for h in range(1,13):
		add_label(h, true)
	
	for i in range(1,13):
		add_label(i, true)
		for j in range(1,13):
			add_label(i * j)

func show_column(x: int):
	columns = 2
	for c in get_children():
		remove_child(c)
	add_label("")
	add_label(x, true)
	for i in range(1,13):
		add_label(i, true)
		add_label(i * x)
