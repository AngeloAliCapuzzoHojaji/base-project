extends Camera3D

@export var TurnRate: int

func _input(event):
	if event.is_action_pressed("TurnLeft"):
		rotate_object_local(Vector3.UP, TurnRate)
	if event.is_action_pressed("TurnRight"):
		rotate_object_local(Vector3.DOWN, TurnRate)
