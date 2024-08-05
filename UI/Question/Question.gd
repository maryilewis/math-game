class_name QuestionDisplay extends Control

var _multiplicand: int
var _multiplicator: int
var _product: int

@export var multiplicand: int:
	get:
		return _multiplicand
	set(value):
		_multiplicand = value
		$Multiplicand.text = str(value)

@export var multiplicator: int:
	get:
		return _multiplicator
	set(value):
		_multiplicator = value
		$Multiplicator.text = str(value)

@export var product: int:
	get:
		return _product
	set(value):
		_product = value
		$Product.value = value
