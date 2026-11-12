extends CanvasLayer

var Inv_size = 36
var ItemsTEXT = [
	"res://items(Resources)/LFuelTank.tres"
]
func _ready():
	for i in Inv_size:
		var slot := InventorySlot.new()
		slot.init(ItemData.Type.Item, Vector2(32,32))
		$Inv.add_child(slot)
	for i in ItemsTEXT.size():
		var item := InventoryItem.new()
		item.init(load(ItemsTEXT[i]))
		%Inv.get_child(i).add_child(item)
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Open Inventory"):
		self.visible = !self.visible
