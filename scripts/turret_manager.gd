extends Node3D
class_name TurretManager

@export var turret: PackedScene = null
@export var enemy_path: Path3D = null

func build_turret(turret_position: Vector3) -> void:
	var new_turret: Turret = turret.instantiate()
	add_child(new_turret)
	new_turret.global_position = turret_position
	new_turret.enemy_path = enemy_path
