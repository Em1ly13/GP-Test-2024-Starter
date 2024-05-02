extends Control

# Exported variables
export var min_value: float = 0
export var max_value: float = 100
export var step: float = 1

# Reference to the Slider node
onready var slider = $HSlider
onready var label = $Label

func _ready():
	slider.connect("value_changed", self, "_on_slider_value_changed")
	update_label_text()

func _on_slider_value_changed(value):
	update_label_text()

func update_label_text():
	label.text = str(slider.value)
