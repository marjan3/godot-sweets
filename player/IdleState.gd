class_name IdleState extends PlayerState


func enter(msg := {}) -> void:
	player.velocity = Vector2.ZERO
	
func update(delta: float) -> void:
	if not player.is_on_floor():
		state_machine.transition_to("Air")
		return
		
	if Input.is_action_just_pressed("ui_up"):
		state_machine.transition_to("Air", {do_jumpt = true})
	elif Input.is_action_pressed("ui_left") or Input.is_action_pressed("ui_right"):
		state_machine.transition_to("Run")
