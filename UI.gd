extends VBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	Events.connect("player_state_entered", self, "_on_Events_player_state_entered")


func _on_Events_player_state_entered(name: String):
	$StateText.text = "State: " + name
