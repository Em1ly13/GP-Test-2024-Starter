extends Control

const MIN_VALUE: float = 1
const MAX_VALUE: float = 20
const STEP: float = 1

var slider
var value_label

func _ready():
	slider = $Slider
	value_label = $Label

	slider.connect("value_changed", self, "_on_slider_value_changed")
	
	update_label_text()

func _on_slider_value_changed(value):
	update_label_text()

func update_label_text():
	value_label.text = str(slider.value)
