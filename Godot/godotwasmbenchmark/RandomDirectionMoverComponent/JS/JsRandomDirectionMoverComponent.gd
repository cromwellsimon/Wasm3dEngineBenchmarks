extends Node;

class_name JsRandomDirectionMoverComponent;

@onready var parent: Node3D = get_parent() as Node3D;
var direction: Vector3;
var speed: float;

func _ready() -> void:
	direction = Vector3(get_math_random(), get_math_random(), get_math_random());
	speed = JavaScriptBridge.eval("""(Math.random() * 9) + 1""");


func get_math_random() -> float:
	return JavaScriptBridge.eval("""(Math.random() * 2) - 1""");


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	parent.position += ((direction * speed) * delta);
