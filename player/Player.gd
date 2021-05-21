class_name Player extends KinematicBody2D

onready var sm: StateMachine = $StateMachine

# Horizontal speed in pixels per second.
export var speed := 500.0
# Vertical acceleration in pixel per second squared.
export var gravity := 3500.0
# Vertical speed applied when jumping.
export var jump_impulse := 1200.0


var velocity: Vector2

func _ready():
	sm.connect("transitioned", self, "_on_StateMachine_transitioned")

func _on_StateMachine_transitioned(name: String) -> void:
	Events.emit_signal("player_state_entered", name)
