class_name Ball
extends RigidBody3D
@export var hold_position:Vector3
var on_ground: bool = true

func _throw(power:float, ZFacing: float) -> void:
	print("Throw")
	set_freeze_enabled(false)
	linear_velocity += Vector3(0, power/5.0, power*ZFacing)

func _pickup() -> void:
	print("Pick up")

# step 5 (write more later)
	on_ground = false
# step 10 (write more later)
	position = hold_position
# freeze the ball in place
	linear_velocity = Vector3.ZERO
	set_freeze_enabled(true)

# changes the ball color
	var newMaterial = StandardMaterial3D.new()
	newMaterial.albedo_color = Color(1,0,0,1)
	get_node("MeshInstance3D").material_override = newMaterial
