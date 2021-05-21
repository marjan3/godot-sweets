class_name RunState 
extends PlayerState


func physics_update(delta: float) -> void:
	if not player.is_on_floor():
		state_machine.transition_to("Air")
		return
	
	var input_dir_x : float = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	
	player.velocity.x = player.speed * input_dir_x
	player.velocity.y += player.gravity * delta
	player.velocity = player.move_and_slide(player.velocity, Vector2.UP)
	
	if Input.is_action_just_pressed("ui_up"):
		state_machine.transition_to("Air", {do_jump = true})
	elif is_equal_approx(input_dir_x, 0.0):
		state_machine.transition_to("Idle")
