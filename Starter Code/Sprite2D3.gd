extends CollisionShape2D

# This function is called when a collision occurs
func _on_CollisionShape2D_body_entered(body):
	# Check if the colliding body is the sprite you want to destroy
	if body.name == "Sprite2D2":
		# Delete the sprite
		queue_free()
