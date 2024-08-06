extends Node3D;

class_name Benchmarks;

@onready var timer: Timer = %Timer;

@export var benchmark_scenes: Array[PackedScene];
var _benchmark_index: int = 0;

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	start_benchmark();


func start_benchmark() -> void:
	if (_benchmark_index >= len(benchmark_scenes)):
		return;
	var benchmark: Node = benchmark_scenes[_benchmark_index].instantiate();
	self.add_child(benchmark);
	timer.start();
	await timer.timeout;
	remove_child(benchmark);
	benchmark.queue_free();
	_benchmark_index += 1;
	start_benchmark();
