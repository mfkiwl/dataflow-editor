class_name JsonGraphNode extends GraphNode

var file_path: String = "res://data/nodes.json"

func _init(name: String, schema: Dictionary):
	self.title = name
	
	for input in schema["inputs"]:
		var slot := int(input)
		set_slot_enabled_left(slot, true)
		#set_slot_label_left(slot, schema["inputs"][input]["label"])
		set_slot_type_left(slot, 0)
		
	for output in schema["outputs"]:
		var slot := int(output)
		set_slot_enabled_right(slot, true)
		#set_slot_label_right(slot, schema["outputs"][output]["label"])
		set_slot_type_right(slot, 0)
		
	add_child(PanelContainer.new())
		


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func set_slot_label_left(slot: int, text: String):
	pass
	
func set_slot_label_right(slot: int, text: String):
	pass
