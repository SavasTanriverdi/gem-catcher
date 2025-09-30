extends Area2D

const SPEED: float = 200.0


func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	var movment: float = Input.get_axis("move_left", "move_right")
	
	position.x += SPEED * delta * movment
	
	position.x = clampf(
		position.x,
		get_viewport_rect().position.x,
		get_viewport_rect().end.x
	)

func _on_area_entered(_area: Area2D) -> void:
	print("_on_area_entered from Paddle Definiton")
