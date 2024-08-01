extends Node3D;

class_name PhysicsBenchmark;

var time_elapsed: float = 0;
var frame_count: int = 0;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	time_elapsed += delta;
	frame_count += 1;
	if (time_elapsed > 1):
		print(frame_count);
		time_elapsed = 0;
		frame_count = 0;
