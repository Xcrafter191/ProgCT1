extends Node2D

const BULLET = preload("uid://dxkhjkt28klla")
@export var bullet_spot : Array[Marker2D] = []
@onready var timer: Timer = $Timer
var top_timer :float = 3
var bot_timer :float = 0.4

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
	print(top_timer)
	print(bot_timer)
	timer.wait_time = randf_range(bot_timer, top_timer)
	top_timer -= 0.01 * top_timer
	bot_timer -= 0.01 * bot_timer
	top_timer = clamp(top_timer, bot_timer, top_timer)
	bot_timer = clamp(bot_timer, 0, top_timer)
