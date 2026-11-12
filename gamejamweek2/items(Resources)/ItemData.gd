class_name ItemData
extends Resource

enum Type {Head, Chest, Back, L_arm, R_arm, L_hand, R_hand, L_leg, R_leg, L_boot, R_boot,}

@export var type: Type
@export var name: String
@export_multiline var description: String
@export var texture: Texture2D
