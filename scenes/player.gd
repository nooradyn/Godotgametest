extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(100, 100)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction = Input.get_vector()
	if Input.is_action_just_pressed("ui_down"):
		position += Vector2(1,0) * 50 * delta
		$PlayerImage.rotation += 10 * delta
