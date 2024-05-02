extends Area2D

# This function is called when a collision occurs
func _on_Area2D_body_entered(body):
	# Check if the colliding body is the one you want to delete the sprite on collision with
	if body.name == "DeleteCollisionObject":
		# Delete the sprite node
		queue_free()
