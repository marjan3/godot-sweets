class_name AirState 
extends PlayerState


func enter(msg := {}):
	if msg.has("do_jump"):
		player.velocity.y = -player.jump_impulse

func physics_update(delta: float):
	
	var input_dir_x: float = (
		Input.get_action_strength("ui_right")
		-
		Input.get_action_strength("ui_left")
	)
	player.velocity.x = player.speed * input_dir_x
	player.velocity.y += player.gravity * delta
	player.velocity = player.move_and_slide(player.velocity, Vector2.UP)
	
	if player.is_on_floor():
		if is_equal_approx(player.velocity.x, 0.0):
			state_machine.transition_to("Idle")
		else:
			state_machine.transition_to("Run")	
