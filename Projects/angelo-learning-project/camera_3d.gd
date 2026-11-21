extends Camera3D

@export var TurnRate: int

func _input(event):
	if event.is_action_pressed("TurnLeft"):
		self.transform.basis.x += Vector3(TurnRate, 0, 0)
