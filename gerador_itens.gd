extends Node2D

# 1. Use preload para carregar a cena do Item
const ITEM_CENA = preload("res://Item.tscn")

# 2. Timer que inicia com 0
var timer: float = 0.0

func _process(delta: float) -> void:
	# Soma delta na função _process para contar os segundos
	timer += delta
	
	# 3. Lógica para quando o timer chegar em 1.5 segundos
	if timer >= 1.5:
		timer = 0.0 # Zera o timer
		criar_item()

func criar_item() -> void:
	# Use a função instantiate() para criar o nó
	var novo_item = ITEM_CENA.instantiate()
	
	# Define o X fora da tela (direita) e gera o Y aleatório
	var pos_x = 1300 
	var pos_y = randi_range(330, 530)
	
	# Altere o atributo position do nó criado
	novo_item.position = Vector2(pos_x, pos_y)
	
	# Use a função add_child para adicionar o novo nó na cena
	add_child(novo_item)
