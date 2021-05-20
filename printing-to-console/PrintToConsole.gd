class_name PrintToConsole extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	demo_console_prints()
	pass # Replace with function body.

func demo_console_prints():
	var a: int = 10;
	a += 10;
	var b: int = 30;
	print_debug(a) 			# 20 At: res://icon.gd:13:_ready()
	print(a) 				# 20
	print_tree_pretty()  	# ┖╴PrintToConsole
	print_stack() 			# Frame 0 - res://icon.gd:16 in function '_ready'
	print_stray_nodes() 	#
	printerr(a) 			#  20 (in red color)
	printraw(a)				# doesn't print to editor
	prints(a, b)			# 20 30 (they have space between)
	printt(a, b)			# 20	30 (they have tab between)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
