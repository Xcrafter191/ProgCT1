extends Area2D

@onready var hitbox: CollisionPolygon2D = $Hitbox

var enemy: CharacterBody2D

func _on_body_entered(body: Node2D) -> void:
	pass # Replace with function body.


func _on_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
