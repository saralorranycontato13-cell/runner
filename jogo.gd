extends Node2D
@export var velocidade: int
func _ready() -> void:
	velocidade = 400

func _process(delta: float) -> void:
	# FAZ MOVER
	$fundo. position.x -= velocidade*delta*0.05
	$fundo2.position.x -= velocidade*delta*0.05
	$meioAzul.position.x -= velocidade*delta*1
	$meioAzul2.position.x -= velocidade*delta*1
	$meioPreto.position.x -= velocidade*delta*1.5
	$meioPreto2.position.x -= velocidade*delta*1.5
	
	# FAZ REPETIR INFINITAMENTE
	if $fundo.position.x < -1152:
		$fundo.position.x = 1152 
	if $fundo2.position.x < -1152:
		$fundo2.position.x = 1152
	$chao.position.x -= velocidade*delta*2
	$chao2.position.x -= velocidade*delta*2
	if $chao.position.x < -1152: 
		$chao. position.x = 1152 
	if $chao2.position.x < -1152:
		$chao2.position.x = 1152
	if $meioAzul.position.x < -1152:
		$meioAzul.position.x = 1152 
	if $meioAzul2.position.x < -1152:
		$meioAzul2.position.x = 1152
	if $meioPreto.position.x < -1152:
		$meioPreto.position.x = 1152 
	if $meioPreto2.position.x < -1152:
		$meioPreto2.position.x = 1152
