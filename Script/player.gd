extends ColorRect

@export var marker_spots : Array[Marker2D]= []
var current_spot = 1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _unhandled_input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("move_up"):
		current_spot += 1
	if Input.is_action_just_pressed("move_down"):
		current_spot -= 1
	current_spot = clamp(current_spot, 0, 2)
	player_position()

func player_position() -> void:
	position = marker_spots[current_spot].global_position
