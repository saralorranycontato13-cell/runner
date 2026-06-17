extends Area2D

var velocidade: int = 400

func _ready() -> void:
	$ImagemItem.play("Voando")

func _process(delta: float) -> void:
	position.x -= velocidade * delta
	if position.x < -200:
		queue_free()

# Função gerada pelo sinal body_entered
func _on_body_entered(body: Node2D) -> void:
	
	if "pontos" in body:
		body.pontos += 1
		queue_free()
	# Verifica se o corpo que colidiu possui a variável 'pontos'
	if "pontos" in body:
		body.pontos += 1 # Adiciona 1 ponto ao jogador
		queue_free()     # Remove o item da cena para ele sumir ao ser coletado
