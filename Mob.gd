extends RigidBody2D


export var min_speed = 150
export var max_speed = 250

# Called when the node enters the scene tree for the first time.
func _ready():
	var mob_types = $AnimatedSprite.frames.get_animation_names()
	var the_type_index = randi() % mob_types.size()
	var the_mob_type = mob_types[the_type_index]
	$AnimatedSprite.animation = the_mob_type
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
