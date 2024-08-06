extends Node

class_name FramerateCounter;

var _time_elapsed: float = 0;
var _frame_count: int = 0;

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	_time_elapsed += delta;
	_frame_count += 1;
	if (_time_elapsed > 1):
		print("FPS: " + str(_frame_count) + ", RAM: " + str(Performance.get_monitor(Performance.MEMORY_STATIC)));
		_time_elapsed = 0;
		_frame_count = 0;
