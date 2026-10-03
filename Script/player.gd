extends ColorRect

const BULLET = preload("uid://dxkhjkt28klla")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("shoot"):
		fire()

func fire():
	var bullet_projectile = BULLET.instantiate()
	bullet_projectile.position = get_global_position()
	bullet_projectile.rotation_degrees = rotation_degrees
	
