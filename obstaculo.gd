extends Area2D

var velocidade: int = 400

func _process(delta: float) -> void:
	position.x -= velocidade * delta
	if position.x < -200:
		queue_free()

# Função gerada pelo sinal body_entered
func _on_body_entered(body: Node2D) -> void:
	# Verifica se o corpo que colidiu possui a variável 'vida' (garante que é o jogador)
	if "vida" in body:
		body.vida -= 1 # Remove 1 de vida do jogador
		queue_free()   # Remove o espinho da cena
