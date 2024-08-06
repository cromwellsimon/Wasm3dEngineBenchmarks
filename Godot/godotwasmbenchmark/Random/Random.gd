extends Object;

class_name Random;

static var number_generator := RandomNumberGenerator.new();

static func range(from: float, to: float) -> float:
	return number_generator.randf_range(from, to);
