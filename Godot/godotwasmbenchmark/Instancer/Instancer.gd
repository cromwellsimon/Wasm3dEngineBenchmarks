extends Node;

class_name Instancer;

@export var to_instance: PackedScene;
@export var area: Vector2 = Vector2(-5, 5);

var instance_count: int = 0;

func _process(delta: float) -> void:
	var child: Node3D = to_instance.instantiate() as Node3D;
	child.position = Vector3(Random.range(area.x, area.y), 0, Random.range(area.x, area.y));
	add_child(child);
	instance_count += 1;
	print(instance_count, " instances have been spawned");
