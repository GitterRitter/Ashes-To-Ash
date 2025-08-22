extends GutTest

func test_should_pass() -> void:
	print("This is a trivial test that should pass")
	queue_free()
	assert_true(true)
