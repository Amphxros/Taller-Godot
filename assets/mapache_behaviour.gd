extends RigidBody3D

var forward : Vector3
var speed: float
var max_speed: float

# Called when the node enters the scene tree for the first time.
func _ready():
	print("racoon")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	forward= self.basis.x
	pass
func _physics_process(delta):
	
	pass
func _input(event):
	if event.is_action_pressed("left"):
		rotate_y(-speed)
		pass
	if event.is_action_pressed("right"):
		rotate_y(speed)
		pass
	if event.is_action_pressed("down"):
		apply_central_impulse(-forward*speed)
		pass
	if event.is_action("up"):
		apply_central_impulse(forward*speed)
		pass
