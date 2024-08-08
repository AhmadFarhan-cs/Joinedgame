extends Area2D


func _on_body_entered(body):
	Playerstates.B_at_end = true


func _on_body_exited(body):
	Playerstates.B_at_end= false
