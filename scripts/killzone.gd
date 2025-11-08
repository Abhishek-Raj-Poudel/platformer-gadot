extends Area2D
const ALIVETIME = 1.0
const DEADTIME = 0.5

@onready var timer: Timer = $Timer

func _on_body_entered(body: Node2D) -> void:
	print("You die bitch!")
	Engine.time_scale = DEADTIME
	body.get_node("CollisionShape2D").queue_free()
	timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = ALIVETIME
	get_tree().reload_current_scene()
