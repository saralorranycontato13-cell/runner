extends Node2D

const OBSTACULO_CENA = preload("res://Obstaculo.tscn")
const ITEM_CENA = preload("res://Item.tscn")

var timer: float = 0.0
var tempo_espera: float = 1.5 

func _process(delta: float) -> void:
	timer += delta
	
	if timer >= tempo_espera:
		timer = 0.0
		tempo_espera = randf_range(1.3, 2.0) 
		
		var chance = randi_range(0, 100)
		if chance < 60:
			criar_espinho()
		else:
			criar_item()

func criar_espinho() -> void:
	var novo_espinho = OBSTACULO_CENA.instantiate()
	var pos_y = 550 # <-- Ajuste para o seu chão
	novo_espinho.position = Vector2(1200, pos_y)
	
	# MUDANÇA AQUI: Adiciona na cena principal, não dentro do gerador
	get_parent().add_child(novo_espinho)

func criar_item() -> void:
	var novo_item = ITEM_CENA.instantiate()
	var pos_y = randi_range(330, 450) 
	novo_item.position = Vector2(1200, pos_y)
	
	# MUDANÇA AQUI: Adiciona na cena principal, não dentro do gerador
	get_parent().add_child(novo_item)
