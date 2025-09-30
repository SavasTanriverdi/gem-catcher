extends Area2D

class_name Gem

@onready var gem: Area2D = $"."

const  SPEED: float = 100.0

signal gem_off_screen


func _ready() -> void:
	pass 


func _process(delta: float) -> void:
	gem.position.y += SPEED * delta
	
	if position.y > get_viewport_rect().end.y:
		print("Gem falls off")
		set_process(false)
		gem_off_screen.emit()
		queue_free()


func _on_area_entered(_area: Area2D) -> void:
	print("Gem hits paddle")
	set_process(false)
	queue_free()
	
