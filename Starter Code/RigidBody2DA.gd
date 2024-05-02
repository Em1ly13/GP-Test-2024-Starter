extends RigidBody2D


func _on_body_entered(body):
	if body.is_in_group("icon"):
		print("Player Hit")
		Sprite2D.queue_free()
