extends Node;

class_name NativeRandomDirectionMoverComponent;

@onready var parent: Node3D = get_parent() as Node3D;
var direction: Vector3;
var speed: float;

func _ready() -> void:
	direction = Vector3(Random.range(-1, 1), Random.range(-1, 1), Random.range(-1, 1));
	speed = Random.range(1, 10);


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	parent.position += ((direction * speed) * delta);
