extends Node2D

@export var velocidade: int
func _ready() -> void:
	velocidade = 400

func _process(delta: float) -> void:
	# Atualiza os textos da interface buscando as variáveis direto do nó do Jogador
	# O símbolo $ serve para apontar o caminho exato dos nós
	$Status/Vida.text = "Vidas: " + str($Jogador.vida)
	$Status/Pontos.text = "Pontos: " + str($Jogador.pontos)
	
	# Opcional: Se a vida chegar a 0, você pode reiniciar o jogo ou pausar
	if $Jogador.vida <= 0:
		get_tree().reload_current_scene()
	
	# constantemente desloca o sprite pra esquerda
	$Fundo.position.x -= velocidade*delta*0.05
	$Fundo2.position.x -= velocidade*delta*0.05
	if $Fundo.position.x < -1152: # se o fundo sair de cena pela esquerda
		$Fundo.position.x = 1152  # coloque ele após a cena na direita
	if $Fundo2.position.x < -1152:
		$Fundo2.position.x = 1152
	
	# constantemente desloca o sprite pra esquerda
	$Chao.position.x -= velocidade*delta*2
	$Chao2.position.x -= velocidade*delta*2
	if $Chao.position.x < -1152: # se o fundo sair de cena pela esquerda
		$Chao.position.x = 1152  # coloque ele após a cena na direita
	if $Chao2.position.x < -1152:
		$Chao2.position.x = 1152
	$MeioPreto.position.x -= velocidade*delta*0.10
	$MeioPreto2.position.x -= velocidade*delta*0.10
	if $MeioPreto.position.x < -1152: # se o fundo sair de cena pela esquerda
		$MeioPreto.position.x = 1152  # coloque ele após a cena na direita
		if $MeioAzul.position.x < -1152:
			$MeioAzul2.position.x = 1152
