extends Node2D

var cena_obstaculo = preload("res://Obstaculo.tscn")
var timer := 0.0
func process(delta):
	timer += delta
	if timer >= 2.0:
		timer = 0.0

		var obstaculo = cena_obstaculo.instantiate()


		obstaculo.position = Vector2(1200, 300)


		add_child(obstaculo)
