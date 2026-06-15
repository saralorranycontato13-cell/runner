extends Area2D 
@export var velocidade := 300
func _process(delta):
	position.x -= velocidade*delta
