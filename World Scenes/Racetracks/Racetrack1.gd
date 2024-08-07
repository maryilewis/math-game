extends Node3D

var speed := 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	$Path3D/PathFollow3D.progress += delta * speed
