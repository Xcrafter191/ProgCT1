extends CharacterBody2D

const bullet_velocity := 400


func _physics_process(delta: float) -> void:
	position.x -= bullet_velocity * delta


func _on_timer_timeout() -> void:
	queue_free()

func _on_hitbox_area_entered(area: Area2D) -> void:
	queue_free()
