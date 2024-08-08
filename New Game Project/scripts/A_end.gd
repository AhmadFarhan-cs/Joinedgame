extends Area2D


func _on_body_entered(body):
	Playerstates.A_at_end = true


func _on_body_exited(body):
	Playerstates.A_at_end = false
