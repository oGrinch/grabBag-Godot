# O script está conectado a um nó do tipo
# CharacterBody2D, de toda a forma representando
# um personagem bidimensional.
extends CharacterBody2D

# Utilizei constante (const) ao invés de
# variáveis (var) porque parece mais coerente.

# MAX_SPEED, determina a velocidade máxima que
# o personagem pode atingir enquanto se move.

# FRICTION, fricção, é a perda de velocidade que
# se dá quando o usuário para de pressoinar algum
# dos botões direcionais. Valores mais altos resultam
# em uma parada mais "seca", e mais baixos, mais
# fluída. Gosto de retrôs, então escolho um valor alto.
const MAX_SPEED = 500.0
const FRICTION = 10000.0

# Aplica física. Quando o usuário pressiona alguma
# das setas direcionais do teclado, o personagem vai
# na direção indicada em sua velocidade máxima. Pode
# ser necessário adicionar aceleração posteriormente.
func _physics_process(delta: float) -> void:
	var input = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if input.length() > 0:
		velocity = input * MAX_SPEED

	# Aplica a fricção, reduzindo gradativamente a 
	# velocidade do personagem.
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)

	# Aplica física e colisões.
	move_and_slide()
