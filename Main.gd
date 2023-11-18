extends PanelContainer

var undo_redo := UndoRedo.new()

var node_source = "res://data/nodes.json"
var nodes : Dictionary
var port_types: Array

func _init():
	nodes = JSON.parse_string(FileAccess.get_file_as_string(node_source))
	

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	($%Undo).disabled = not appUndoRedo.has_undo()
	($%Redo).disabled = not appUndoRedo.has_redo()	


func _on_menu_button_pressed():
	print("pressed")
	pass # Replace with function body.


func _on_insert_node_pressed():
	$%GraphEdit.add_child(JsonGraphNode.new("test_node", nodes["test_node"]))


func _on_graph_edit_connection_request(from_node, from_port, to_node, to_port):
	(%GraphEdit).is_node_connected()
	($%GraphEdit).connect_node(from_node, from_port, to_node, to_port)
	pass # Replace with function body.


func _on_graph_edit_delete_nodes_request(nodes):
	pass # Replace with function body.


func _on_graph_edit_disconnection_request(from_node, from_port, to_node, to_port):
	(%GraphEdit).disconnect_node(from_node, from_port, to_node, to_port)
	pass # Replace with function body.


func _on_undo_pressed():
	undo_redo.undo()


func _on_redo_pressed():
	undo_redo.redo()
