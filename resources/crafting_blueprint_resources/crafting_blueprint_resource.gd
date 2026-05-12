extends Resource
class_name CraftingBlueprintResource

@export var item_key := ItemConfig.Keys.Axe
@export var costs : Array[BlueprintCostData] = []
@export var need_multitool :=  false
@export var need_tinderbox := false
