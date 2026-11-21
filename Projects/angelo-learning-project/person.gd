extends RigidBody3D

@export var acceleration: int = 1
var velocity: Vector3 = Vector3(0, 0, 0)
var velocity_transformer_x: float
var velocity_transformer_z: float
var player: RigidBody3D = self
@export var camera: Camera3D

func _process(delta):
	player.position += (velocity * delta)
	
func _input(event):
	if event.is_action_pressed("MoveForward"):
		velocity += camera.transform.basis.z * -acceleration
		velocity.y = 0
		print("%v", velocity)
	if event.is_action_pressed("MoveBackwards"):
		velocity += camera.transform.basis.z * acceleration
		velocity.y = 0
		print("%v", velocity)
