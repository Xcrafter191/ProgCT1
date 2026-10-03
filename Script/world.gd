extends Node2D

const BULLET = preload("uid://dxkhjkt28klla")
@export var bullet_spot : Array[Marker2D] = []
@onready var timer: Timer = $Timer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	var bullet_projectile = BULLET.instantiate()
	bullet_projectile.position = bullet_spot.pick_random().global_position
	add_child(bullet_projectile)
	print(bullet_projectile.position)
	timer.wait_time = randf_range(0.5, 3)
