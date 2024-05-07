extends Node3D
class_name Base

@export var maximum_health: int = 5

var current_health: int:
	set(health_in):
		current_health = health_in
		health_label.text = str(current_health) + "/" + str(maximum_health)
		var red: Color = Color.RED
		var white: Color = Color.WHITE
		health_label.modulate = red.lerp(white, float(current_health) / float(maximum_health))
		if current_health < 1:
			get_tree().reload_current_scene()

@onready var health_label: Label3D = $HealthLabel

func _ready() -> void:
	current_health = maximum_health

func take_damage() -> void:
	current_health -= 1
