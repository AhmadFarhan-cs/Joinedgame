extends Area2D


func _on_body_entered(body):
	Playerstates.A_key = true
	queue_free()


